################################################################################
#    HPCC SYSTEMS software Copyright (C) 2012 HPCC Systems®.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
################################################################################

# File  : shares.cmake
#
#########################################################
# Description:
# ------------
# shared stuff can be used by all CMakeLists.txt
#########################################################

###########################################################################
### Some settings for Visual Studio 
###########################################################################

IF (WIN32)

	# Source_groups: organize files in Folder in Visual Studio
	set(GENERATED_CPP "Generated CPP Files") 
	set(GENERATED_OTHER "Generated Files")
	set(PRECOMPILE_FILES "Precompile Files")
	set(NCM_FILES "NCM Source Files")
	set(ECM_FILES "ECM Source Files")
	set(SCM_FILES "SCM Source Files")
	set(CMAKE_MODULES "CMake Modules")
	set(HID_FILES "HID Files")
	set(IMPLHEADER_FILES "Impl. Header Files")

	# groups
	source_group(${ECM_FILES} REGULAR_EXPRESSION  .*[.]ecm$)
	source_group(${NCM_FILES} REGULAR_EXPRESSION  .*[.]ncm$)
	source_group(${SCM_FILES} REGULAR_EXPRESSION  .*[.]scm$)
	source_group(${HID_FILES} REGULAR_EXPRESSION  .*[.]hid$)
	source_group(${CMAKE_MODULES} REGULAR_EXPRESSION  .*[.]cmake$)
	source_group(${IMPLHEADER_FILES} REGULAR_EXPRESSION .*[.]ipp$|.*[.]tpp$|.*[.]inc$)

ENDIF (WIN32)
  