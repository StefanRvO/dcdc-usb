/*
 * Copyright (c) 2011 by Mini-Box.com, iTuner Networks Inc.
 * Written by Nicu Pavel <npavel@mini-box.com>
 * All Rights Reserved
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <libusb-1.0/libusb.h>

#include "dcdc-usb.h"


#define P(t, v ...) fprintf(stderr, t "\n", ## v)

int dcdc_send(struct libusb_device_handle *dev_handle, unsigned char *data, int size)
{
        if (data == NULL)
                return -1;
        int transfered = 0;
        libusb_interrupt_transfer(dev_handle, LIBUSB_ENDPOINT_OUT + 1, (char *) data, size, &transfered, 1000);
        return transfered;
}

int dcdc_recv(struct libusb_device_handle *dev_handle, unsigned char *data, int size, int timeout)
{
        if (data == NULL)
                return -1;
        int transfered = 0;
        libusb_interrupt_transfer(dev_handle, LIBUSB_ENDPOINT_IN + 1, (char *) data, size, &transfered, timeout);
        return transfered;
}

int dcdc_close(struct libusb_device_handle *dev_handle)
{
        libusb_close(dev_handle);
        return 0;
}

struct libusb_device_handle * dcdc_connect(struct libusb_context *ctx)
{
        libusb_device_handle *dev_handle;
        libusb_set_debug(ctx, 3);
        dev_handle = libusb_open_device_with_vid_pid(ctx, DCDC_VID, DCDC_PID);
        return dev_handle;
}

int dcdc_setup(struct libusb_device_handle *dev_handle, bool verbose)
{
        char buf[65535];
        if (dev_handle == NULL)
                return -1;


        if(libusb_kernel_driver_active(dev_handle, 0) == 1)
        {
                if(libusb_detach_kernel_driver(dev_handle, 0) != 0)
                {
                        if (verbose) printf("Could not detach kernel driver!");
                        return -2;
                }
        }
        if (libusb_set_configuration(dev_handle, 1) < 0)
        {

                if (verbose) fprintf(stderr, "Cannot set configuration 1 for the device\n");
                return -3;
        }

        usleep(1000);

        if (libusb_claim_interface(dev_handle, 0) < 0)
        {
                if(verbose) fprintf(stderr, "Cannot claim interface 0\n");
                return -4;
        }

        if (libusb_set_interface_alt_setting(dev_handle, 0, 0) < 0)
        {
                if (verbose) fprintf(stderr, "Cannot set alternate configuration\n");
                return -5;
        }

        if (libusb_control_transfer(dev_handle, LIBUSB_REQUEST_TYPE_CLASS +  LIBUSB_RECIPIENT_INTERFACE,
                                    0x000000a, 0x0000000, 0x0000000, buf, 0x0000000, 1000) < 0)
        {
                if (verbose)
                {
                    fprintf(stderr, "Cannot send control message %d\n", verbose);
                }
                return -6;
        }

        return 0;
}
