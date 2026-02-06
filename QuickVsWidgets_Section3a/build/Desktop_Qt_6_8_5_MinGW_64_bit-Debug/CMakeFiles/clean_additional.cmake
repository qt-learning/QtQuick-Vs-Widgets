# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appQuickVsWidgets_Section3a_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appQuickVsWidgets_Section3a_autogen.dir\\ParseCache.txt"
  "appQuickVsWidgets_Section3a_autogen"
  )
endif()
