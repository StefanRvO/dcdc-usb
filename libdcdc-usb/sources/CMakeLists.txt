#
# Test CMake version
#
CMAKE_MINIMUM_REQUIRED(VERSION 3.0.0)



# And now we add any targets that we want
add_library(dcdc-usb dcdc-usb-comm.c dcdc-usb-parse.c dcdc-usb-proto.c ${LIBDCDCUSB_HEADERS})
target_link_libraries(dcdc-usb usb usb-1.0 m)




