#
# Try to find GBM library and include path.
# Once done this will define
#
# GBM_FOUND
# GBM_INCLUDE_DIR
# GBM_LIBRARY
#

FIND_PATH(GBM_INCLUDE_DIR
  NAMES
  gbm.h
  PATHS
  ${CMAKE_INCLUDE_PATH}/include/libgbm/
  ~/include/libgbm/
  /usr/include/libgbm/
  /usr/local/include/libgbm/
  /sw/include/libgbm/
  /opt/local/include/libgbm/
  DOC "The directory where gbm.h resides")

FIND_LIBRARY(GBM_LIBRARY
  NAMES gbm
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
  DOC "The GBM library")

MARK_AS_ADVANCED(GBM_FOUND)

