set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "The Robotics Library is a self-contained C++ library for robot kinematics, visualization, motion planning, and control.")

if(MSVC)
	if(CMAKE_CXX_COMPILER_VERSION MATCHES "^([0-9]+)\\.([0-9])([0-9]*)\\.([0-9]+)\\.")
		if(CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 18)
			math(EXPR LINKER_VERSION_MAJOR "${CMAKE_MATCH_1} - 5")
		else()
			math(EXPR LINKER_VERSION_MAJOR "${CMAKE_MATCH_1} - 6")
		endif()
		set(PLATFORM_TOOLSET_MAJOR ${LINKER_VERSION_MAJOR})
		set(PLATFORM_TOOLSET_MINOR ${CMAKE_MATCH_2})
		set(LINKER_VERSION "${LINKER_VERSION_MAJOR}.${CMAKE_MATCH_2}${CMAKE_MATCH_3}.${CMAKE_MATCH_4}")
	endif()
	if(CMAKE_CL_64)
		set(CPACK_PACKAGE_FILE_NAME "rl-${VERSION}-msvc-${PLATFORM_TOOLSET_MAJOR}.${PLATFORM_TOOLSET_MINOR}-x64")
		set(CPACK_PACKAGE_INSTALL_DIRECTORY "Robotics Library\\\\${VERSION}\\\\MSVC\\\\${PLATFORM_TOOLSET_MAJOR}.${PLATFORM_TOOLSET_MINOR}\\\\x64")
		set(CPACK_PACKAGE_NAME "Robotics Library ${VERSION} - MSVC ${PLATFORM_TOOLSET_MAJOR}.${PLATFORM_TOOLSET_MINOR} (x64)")
	else()
		set(CPACK_PACKAGE_FILE_NAME "rl-${VERSION}-msvc-${PLATFORM_TOOLSET_MAJOR}.${PLATFORM_TOOLSET_MINOR}-x86")
		set(CPACK_PACKAGE_INSTALL_DIRECTORY "Robotics Library\\\\${VERSION}\\\\MSVC\\\\${PLATFORM_TOOLSET_MAJOR}.${PLATFORM_TOOLSET_MINOR}\\\\x86")
		set(CPACK_PACKAGE_NAME "Robotics Library ${VERSION} - MSVC ${PLATFORM_TOOLSET_MAJOR}.${PLATFORM_TOOLSET_MINOR} (x86)")
	endif()
else()
	set(CPACK_PACKAGE_FILE_NAME "rl-${VERSION}-${CMAKE_SYSTEM_NAME}")
	set(CPACK_PACKAGE_INSTALL_DIRECTORY "rl-${VERSION}")
	set(CPACK_PACKAGE_NAME "Robotics Library ${VERSION}")
endif()

set(CPACK_COMPONENT_DEMOS_DEPENDS examples)
set(CPACK_COMPONENT_DEMOS_DESCRIPTION "Demo programs for the Robotics Library.")
set(CPACK_COMPONENT_DEMOS_DISPLAY_NAME "Demo Programs")
set(CPACK_COMPONENT_DEVELOPMENT_DESCRIPTION "Development files for the Robotics Library.")
set(CPACK_COMPONENT_DEVELOPMENT_DISPLAY_NAME "Development Files")
set(CPACK_COMPONENT_DOCUMENTATION_DESCRIPTION "Documentation for the Robotics Library.")
set(CPACK_COMPONENT_DOCUMENTATION_DISPLAY_NAME "Documentation")
set(CPACK_COMPONENT_EXAMPLES_DESCRIPTION "Example files for the Robotics Library.")
set(CPACK_COMPONENT_EXAMPLES_DISPLAY_NAME "Example Files")
set(CPACK_COMPONENT_EXTRAS_DESCRIPTION "Extra programs for the Robotics Library.")
set(CPACK_COMPONENT_EXTRAS_DISPLAY_NAME "Extra Programs")
set(CPACK_COMPONENT_RUNTIME_DESCRIPTION "Runtime files for the Robotics Library.")
set(CPACK_COMPONENT_RUNTIME_DISPLAY_NAME "Runtime Files")
set(CPACK_COMPONENT_SYSTEM_DESCRIPTION "Required system files for the Robotics Library.")
set(CPACK_COMPONENT_SYSTEM_DISPLAY_NAME "Required System Files")
set(CPACK_DEB_COMPONENT_INSTALL ON)
set(CPACK_DEBIAN_DEMOS_FILE_NAME "DEB-DEFAULT")
set(CPACK_DEBIAN_DEMOS_PACKAGE_DEPENDS "librl-examples (= ${VERSION})")
set(CPACK_DEBIAN_DEMOS_PACKAGE_SHLIBDEPS ON)
set(CPACK_DEBIAN_DEVELOPMENT_FILE_NAME "DEB-DEFAULT")
set(CPACK_DEBIAN_DEVELOPMENT_PACKAGE_NAME "librl-dev")
set(CPACK_DEBIAN_DEVELOPMENT_PACKAGE_SECTION "libdevel")
set(CPACK_DEBIAN_DOCUMENTATION_FILE_NAME "DEB-DEFAULT")
set(CPACK_DEBIAN_DOCUMENTATION_PACKAGE_ARCHITECTURE "all")
set(CPACK_DEBIAN_DOCUMENTATION_PACKAGE_NAME "librl-doc")
set(CPACK_DEBIAN_DOCUMENTATION_PACKAGE_SECTION "doc")
set(CPACK_DEBIAN_EXAMPLES_FILE_NAME "DEB-DEFAULT")
set(CPACK_DEBIAN_EXAMPLES_PACKAGE_ARCHITECTURE "all")
set(CPACK_DEBIAN_EXTRAS_FILE_NAME "DEB-DEFAULT")
set(CPACK_DEBIAN_EXTRAS_PACKAGE_SHLIBDEPS ON)
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://www.roboticslibrary.org/")
set(CPACK_DEBIAN_PACKAGE_NAME "librl")
set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_PACKAGE_SOURCE "librl")
set(CPACK_DEBIAN_RUNTIME_FILE_NAME "DEB-DEFAULT")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_NAME "librl")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_RECOMMENDS "librl-examples (= ${VERSION})")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_SECTION "libs")
set(CPACK_DEBIAN_RUNTIME_PACKAGE_SHLIBDEPS ON)
set(CPACK_NSIS_DISPLAY_NAME ${CPACK_PACKAGE_NAME})
set(CPACK_NSIS_EXECUTABLES_DIRECTORY ${CMAKE_INSTALL_BINDIR})
set(CPACK_NSIS_HELP_LINK "https://www.roboticslibrary.org/contact")
set(CPACK_NSIS_INSTALLED_ICON_NAME Uninstall.exe)
set(
	CPACK_NSIS_MENU_LINKS
	"https://www.roboticslibrary.org/" "RL"
	"https://github.com/roboticslibrary" "RL on GitHub"
	"https://launchpad.net/roblib" "RL on Launchpad"
	"https://sourceforge.net/projects/roblib" "RL on SourceForge"
	"https://www.youtube.com/roboticslibrary" "RL on YouTube"
)
set(CPACK_NSIS_MODIFY_PATH ON)
set(CPACK_NSIS_MUI_ICON ${CMAKE_CURRENT_SOURCE_DIR}/robotics-library.ico)
set(CPACK_NSIS_MUI_UNIICON ${CMAKE_CURRENT_SOURCE_DIR}/robotics-library.ico)
set(CPACK_NSIS_PACKAGE_NAME ${CPACK_PACKAGE_NAME})
set(CPACK_NSIS_URL_INFO_ABOUT "https://www.roboticslibrary.org/")
set(CPACK_PACKAGE_CONTACT "Robotics Library Team <roblib-developers@lists.sourceforge.net>")
set(CPACK_PACKAGE_VENDOR "Robotics Library")
set(CPACK_PACKAGE_VERSION ${VERSION})
set(CPACK_PACKAGE_VERSION_MAJOR ${VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${VERSION_PATCH})
set(CPACK_PROJECT_CONFIG_FILE ${CMAKE_CURRENT_SOURCE_DIR}/cmake/CPackProjectConfig.cmake)
set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RPM_COMPONENT_INSTALL ON)
set(CPACK_RPM_DEMOS_FILE_NAME "RPM-DEFAULT")
set(CPACK_RPM_demos_PACKAGE_REQUIRES "rl-examples = ${VERSION}")
set(CPACK_RPM_DEVELOPMENT_FILE_NAME "RPM-DEFAULT")
set(CPACK_RPM_development_PACKAGE_NAME "rl-devel")
set(CPACK_RPM_DOCUMENTATION_FILE_NAME "RPM-DEFAULT")
set(CPACK_RPM_documentation_PACKAGE_GROUP "Documentation")
set(CPACK_RPM_EXAMPLES_FILE_NAME "RPM-DEFAULT")
set(
	CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST_ADDITION
	/usr/lib/cmake
	/usr/lib64/cmake
	/usr/share/applications
	/usr/share/gtksourceview-3.0
	/usr/share/gtksourceview-3.0/language-specs
	/usr/share/icons
	/usr/share/icons/hicolor
	/usr/share/icons/hicolor/scalable
	/usr/share/icons/hicolor/scalable/apps
)
set(CPACK_RPM_EXTRAS_FILE_NAME "RPM-DEFAULT")
set(CPACK_RPM_PACKAGE_DESCRIPTION ${CPACK_PACKAGE_DESCRIPTION_SUMMARY})
set(CPACK_RPM_PACKAGE_GROUP "Development/Libraries")
set(CPACK_RPM_PACKAGE_LICENSE "BSD")
set(CPACK_RPM_PACKAGE_NAME "rl")
set(CPACK_RPM_PACKAGE_SUMMARY "Robotics Library")
set(CPACK_RPM_PACKAGE_URL "https://www.roboticslibrary.org/contact")
set(CPACK_RPM_RUNTIME_FILE_NAME "RPM-DEFAULT")
set(CPACK_RPM_runtime_PACKAGE_NAME "rl")
set(CPACK_RPM_runtime_PACKAGE_SUGGESTS "rl-examples = ${VERSION}")
set(CPACK_WIX_COMPONENT_INSTALL OFF)
set(CPACK_WIX_EXTENSIONS "WiXUtilExtension")
set(
	CPACK_WIX_EXTRA_SOURCES
	${CMAKE_CURRENT_BINARY_DIR}/WixExtra.wxs
	${CMAKE_CURRENT_SOURCE_DIR}/cmake/WixUI_FeatureTreeNoLicense.wxs
)
set(CPACK_WIX_LICENSE_RTF ${CMAKE_CURRENT_BINARY_DIR}/LICENSE.txt)
set(CPACK_WIX_PATCH_FILE ${CMAKE_CURRENT_BINARY_DIR}/WixPatch.xml)
set(CPACK_WIX_PRODUCT_ICON ${CMAKE_CURRENT_SOURCE_DIR}/robotics-library.ico)
set(CPACK_WIX_PROGRAM_MENU_FOLDER ${CPACK_PACKAGE_NAME})
set(CPACK_WIX_PROPERTY_ARPHELPLINK "https://www.roboticslibrary.org/contact")
set(CPACK_WIX_PROPERTY_ARPURLINFOABOUT "https://www.roboticslibrary.org/")
set(CPACK_WIX_ROOT_FEATURE_DESCRIPTION ${CPACK_PACKAGE_DESCRIPTION_SUMMARY})
set(CPACK_WIX_ROOT_FEATURE_TITLE "Robotics Library")
set(CPACK_WIX_UI_BANNER ${CMAKE_CURRENT_SOURCE_DIR}/cmake/WixUIBanner.bmp)
set(CPACK_WIX_UI_DIALOG ${CMAKE_CURRENT_SOURCE_DIR}/cmake/WixUIDialog.bmp)
set(CPACK_WIX_UI_REF "WixUI_FeatureTreeNoLicense")

get_cmake_property(COMPONENTS COMPONENTS)
list(FIND COMPONENTS demos DEMOS_COMPONENT_INDEX)
list(FIND COMPONENTS runtime RUNTIME_COMPONENT_INDEX)
list(FIND COMPONENTS system SYSTEM_COMPONENT_INDEX)

if(DEMOS_COMPONENT_INDEX GREATER -1)
	list(APPEND CPACK_DEBIAN_RUNTIME_PACKAGE_RECOMMENDS "librl-demos (= ${VERSION})")
	list(APPEND CPACK_RPM_runtime_PACKAGE_SUGGESTS "rl-demos = ${VERSION}")
endif()

if(RUNTIME_COMPONENT_INDEX GREATER -1)
	list(APPEND CPACK_COMPONENT_DEMOS_DEPENDS runtime)
	list(APPEND CPACK_COMPONENT_DEVELOPMENT_DEPENDS runtime)
	list(APPEND CPACK_DEBIAN_DEMOS_PACKAGE_DEPENDS "librl (= ${VERSION})")
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "librl (= ${VERSION})")
	list(APPEND CPACK_RPM_demos_PACKAGE_REQUIRES "rl = ${VERSION}")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "rl = ${VERSION}")
endif()

if(SYSTEM_COMPONENT_INDEX GREATER -1)
	list(APPEND CPACK_COMPONENT_DEMOS_DEPENDS system)
	list(APPEND CPACK_COMPONENT_DEVELOPMENT_DEPENDS system)
	list(APPEND CPACK_COMPONENT_EXTRAS_DEPENDS system)
	list(APPEND CPACK_COMPONENT_RUNTIME_DEPENDS system)
endif()

if(Boost_INCLUDE_DIR)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libboost-dev (>= 1.46)")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "boost-devel >= 1.46")
endif()
if(Boost_REGEX_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libboost-regex-dev (>= 1.46)")
endif()
if(Boost_SYSTEM_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libboost-system-dev (>= 1.46)")
endif()
if(Boost_THREAD_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libboost-thread-dev (>= 1.46)")
endif()
if(BULLET_INCLUDE_DIRS AND BULLET_BULLETCOLLISION_LIBRARY_RELEASE AND BULLET_BULLETDYNAMICS_LIBRARY_RELEASE AND BULLET_BULLETSOFTBODY_LIBRARY_RELEASE AND BULLET_LINEARMATH_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libbullet-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "bullet-devel")
endif()
if(CCD_INCLUDE_DIRS AND CCD_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libccd-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "libccd-devel")
endif()
if(Coin_INCLUDE_DIRS AND Coin_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libcoin60-dev | libcoin80-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "Coin3-devel")
endif()
if(Comedi_INCLUDE_DIRS AND Comedi_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libcomedi-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "comedilib-devel")
endif()
if(EIGEN3_INCLUDE_DIRS)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libeigen3-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "eigen3-devel")
endif()
if(FCL_INCLUDE_DIRS AND FCL_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libfcl-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "fcl-devel")
endif()
if(libdc1394_V1_INCLUDE_DIRS AND libdc1394_V1_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libdc1394-13-dev")
endif()
if(libdc1394_V2_INCLUDE_DIRS AND libdc1394_V2_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libdc1394-22-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "libdc1394-devel")
endif()
if(LIBXML2_INCLUDE_DIRS AND LIBXML2_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libxml2-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "libxml2-devel")
endif()
if(LIBXSLT__INCLUDE_DIRS AND LIBXSLT__LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "LIBXSLT_1-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "LIBXSLT_-devel")
endif()
if(NLopt_INCLUDE_DIRS AND NLopt_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libnlopt-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "NLopt-devel")
endif()
if(ODE_INCLUDE_DIRS AND ODE_LIBRARY_RELEASE)
	if(ODE_USE_DOUBLE_PRECISION)
		list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libode-dev")
	else()
		list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "libode-sp-dev")
	endif()
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "ode-devel")
endif()
if(zlib_INCLUDE_DIRS AND zlib_LIBRARY_RELEASE)
	list(APPEND CPACK_DEBIAN_DEVELOPMENT_PACKAGE_DEPENDS "zlib1g-dev")
	list(APPEND CPACK_RPM_development_PACKAGE_REQUIRES "zlib-devel")
endif()

foreach(COMPONENT ${COMPONENTS})
	string(TOUPPER ${COMPONENT} COMPONENT_UPPER)
	if(DEFINED CPACK_DEBIAN_${COMPONENT_UPPER}_PACKAGE_DEPENDS)
		string(REPLACE ";" ", " CPACK_DEBIAN_${COMPONENT_UPPER}_PACKAGE_DEPENDS "${CPACK_DEBIAN_${COMPONENT_UPPER}_PACKAGE_DEPENDS}")
	endif()
	if(DEFINED CPACK_DEBIAN_${COMPONENT_UPPER}_PACKAGE_RECOMMENDS)
		string(REPLACE ";" ", " CPACK_DEBIAN_${COMPONENT_UPPER}_PACKAGE_RECOMMENDS "${CPACK_DEBIAN_${COMPONENT_UPPER}_PACKAGE_RECOMMENDS}")
	endif()
	if(DEFINED CPACK_RPM_${COMPONENT}_PACKAGE_REQUIRES)
		string(REPLACE ";" ", " CPACK_RPM_${COMPONENT}_PACKAGE_REQUIRES "${CPACK_RPM_${COMPONENT}_PACKAGE_REQUIRES}")
	endif()
	if(DEFINED CPACK_RPM_${COMPONENT}_PACKAGE_SUGGESTS)
		string(REPLACE ";" ", " CPACK_RPM_${COMPONENT}_PACKAGE_SUGGESTS "${CPACK_RPM_${COMPONENT}_PACKAGE_SUGGESTS}")
	endif()
endforeach()

string(REPLACE ";" "\r\n" CPACK_NSIS_CREATE_ICONS_EXTRA "${CPACK_NSIS_CREATE_ICONS_EXTRA}")
string(REPLACE ";" "\r\n" CPACK_NSIS_DELETE_ICONS_EXTRA "${CPACK_NSIS_DELETE_ICONS_EXTRA}")
string(REPLACE "/>;<Shortcut" "/>\r\n<Shortcut" WIX_SHORTCUTS "${WIX_SHORTCUTS}")

configure_file(LICENSE ${CMAKE_CURRENT_BINARY_DIR}/LICENSE.txt COPYONLY)
configure_file(cmake/WixExtra.wxs.in ${CMAKE_CURRENT_BINARY_DIR}/WixExtra.wxs)
configure_file(cmake/WixPatch.xml.in ${CMAKE_CURRENT_BINARY_DIR}/WixPatch.xml)
