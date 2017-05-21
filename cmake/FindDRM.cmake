#
# Try to find DRM library and include path.
# Once done this will define
#
# DRM_FOUND
# DRM_INCLUDE_DIR
# DRM_LIBRARY
#

FIND_PATH(DRM_INCLUDE_DIR
  NAMES
  drm.h
  PATHS
  ${CMAKE_INCLUDE_PATH}/include/libdrm/
  ~/include/libdrm/
  /usr/include/libdrm/
  /usr/local/include/libdrm/
  /sw/include/libdrm/
  /opt/local/include/libdrm/
  DOC "The directory where drm.h resides")

FIND_LIBRARY(DRM_LIBRARY
  NAMES drm
  PATHS
  ${CMAKE_LIBRARY_PATH}/lib/
  ~/lib/
  /usr/lib64
  /usr/lib
  /usr/local/lib64
  /usr/local/lib
  /sw/lib
  /opt/local/lib
  /usr/lib/i386-linux-gnu/
  DOC "The DRM library")

MARK_AS_ADVANCED(DRM_FOUND)

