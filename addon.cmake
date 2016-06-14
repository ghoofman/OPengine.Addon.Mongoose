
message(STATUS "Prep for addon: MONGOOSE")

SET(MONGOOSE_PATH ${CMAKE_CURRENT_LIST_DIR})

macro(ADDON_MONGOOSE_PROJECT ADDON_BUILD)
    message(STATUS "Adding project with build folder of ${ADDON_BUILD}")
    add_subdirectory (${MONGOOSE_PATH} "${ADDON_BUILD}/mongoose_build")
endmacro(ADDON_MONGOOSE_PROJECT)

macro(ADDON_MONGOOSE APPLICATION_TARGET)
    message(STATUS "Function call for MONGOOSE")
    message(STATUS "Adding include directory to: ${${APPLICATION_TARGET}} ${MONGOOSE_PATH}/repo/")
    include_directories(${MONGOOSE_PATH}/include/)
    include_directories(${MONGOOSE_PATH}/repo/)
endmacro(ADDON_MONGOOSE)

macro(ADDON_MONGOOSE_LINK TEMP_RESULT)
    SET(TEMP_RESULT "mongoose")
endmacro(ADDON_MONGOOSE_LINK)
