#
# Test CMake version
#
CMAKE_MINIMUM_REQUIRED(VERSION 3.0.0)

set (DCDCUSB_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set (DCDCUSB_HEADERDIR "${DCDCUSB_DIR}/headers")
#set (DCDCUSB_HEADERS ${DCDCUSB_HEADERDIR}/ More headers)


include_directories(${DCDCUSB_HEADERDIR} "${ROOT}/libdcdc-usb/headers/")

# And now we add any targets that we want
add_subdirectory(sources)
