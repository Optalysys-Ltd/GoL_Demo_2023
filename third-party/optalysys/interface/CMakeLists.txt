add_definitions(-DOPTALYSYS_SIM)

# source files
file (GLOB_RECURSE OPTALYSYS_INTERFACE_SRC_FILES CONFIGURE_DEPENDS lib/*.c lib/*.cpp)

# include directories
include_directories( "${CMAKE_SOURCE_DIR}/include" )
include_directories( "../../../src/binfhe/include" )
include_directories( "../../../src/pke/include" )
list(APPEND OPTALYSYS_INTERFACE_INCLUDE_DIRS "${CMAKE_CURRENT_SOURCE_DIR}/include")
list(APPEND OPTALYSYS_INTERFACE_INCLUDE_DIRS "${CMAKE_CURRENT_SOURCE_DIR}/lib")
include_directories(${OPTALYSYS_INTERFACE_INCLUDE_DIRS})
set(OPTALYSYS_INTERFACE_INCLUDE_DIRS "${OPTALYSYS_INTERFACE_INCLUDE_DIRS}" CACHE INTERNAL "")

# interface library
add_library(optalysys_interface STATIC ${OPTALYSYS_INTERFACE_SRC_FILES})
set_property(TARGET optalysys_interface PROPERTY POSITION_INDEPENDENT_CODE ON)

# link to proto_graphec
get_filename_component(PARENT_DIR ${CMAKE_CURRENT_SOURCE_DIR} DIRECTORY)
target_link_libraries(optalysys_interface "${PARENT_DIR}/Optalysys_proto_GraphEC/libproto_graphec.a")

# build the examples
set( OPTAPPS "" )
if ( BUILD_EXAMPLES )
	file (GLOB OPT_EXAMPLES_SRC_FILES CONFIGURE_DEPENDS examples/*.cpp)
	foreach (app ${OPT_EXAMPLES_SRC_FILES})
		get_filename_component ( exe ${app} NAME_WE )
		add_executable ( ${exe} ${app} )
		set_property(TARGET ${exe} PROPERTY RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin/optalysys)
		set( OPTAPPS ${OPTAPPS} ${exe} )
        target_link_libraries ( ${exe} optalysys_interface )
        target_link_libraries ( ${exe} OPENFHEbinfhe OPENFHEpke )
	endforeach()

	add_custom_target( alloptexamples )
	add_dependencies( alloptexamples ${OPTAPPS} )
endif()
