CMAKE_MINIMUM_REQUIRED(VERSION 3.0.0)

add_executable(dcdc-usb_app main.c ${DCDCUSB_HEADERS})
target_link_libraries (dcdc-usb_app dcdc-usb)
