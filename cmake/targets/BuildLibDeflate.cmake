register_repository(
  NAME
    libdeflate
  REPOSITORY
    ebiggers/libdeflate
  COMMIT
    f2bcd47d45394d437ce12a6d222b2fc6abe2e147
)

register_cmake_command(
  TARGET
    libdeflate
  TARGETS
    libdeflate_static
  ARGS
    -DLIBDEFLATE_BUILD_STATIC_LIB=ON
    -DLIBDEFLATE_BUILD_SHARED_LIB=OFF
    -DLIBDEFLATE_BUILD_GZIP=OFF
  LIBRARIES
    deflatestatic WIN32
    deflate UNIX
  INCLUDES
    .
)
