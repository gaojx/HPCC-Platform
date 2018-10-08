#####################################################
#		 Cmake Input File for CMake Module
#####################################################
# Component: cmake module
set (PROJ "CMake-Modules")

project( ${PROJ} ) 


set(CMAKE_MODULES "Module Source Files")
source_group(${CMAKE_MODULES} REGULAR_EXPRESSION  .*[.]cmake$)

FILE(GLOB FILES *.cmake)
add_custom_target(${PROJ}
	ALL	
	SOURCES ${FILES}
)


