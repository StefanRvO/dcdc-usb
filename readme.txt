Linux application(dcdc-usb) and library (libdcdc-usb) for controlling and listing the 
parameters of mini-box.com DCDC-USB product (http://www.mini-box.com/DCDC-USB)

Compiling and Installing:

Make sure you have libusb and libusb development packages installed.

make clean install

It will install by default in /usr/local/

Usage:

dcdc-usb with no parameters will display the current output voltage.
dcdc-usb -a will display all settings from the device.
dcdc-usb -v 20.50 will set the output voltage to 20.5V.


This branch
------------

This branch aims to convert the app into using libusb1.0 instead of 0.1

Also, the buildsystem will be changed to a cmake based one.
