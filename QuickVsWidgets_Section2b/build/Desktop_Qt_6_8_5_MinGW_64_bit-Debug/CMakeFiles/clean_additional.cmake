# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\QuickVsWidgets_Section2b_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\QuickVsWidgets_Section2b_autogen.dir\\ParseCache.txt"
  "QuickVsWidgets_Section2b_autogen"
  )
endif()
