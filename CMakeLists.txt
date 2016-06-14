cmake_minimum_required(VERSION 2.8)

project(mongoose)

include_directories(${CMAKE_CURRENT_LIST_DIR}/include/)
include_directories(${CMAKE_CURRENT_LIST_DIR}/repo/)

add_external_opifex_includes()

add_library(mongoose
	"src/OPmongoose.cpp"
	"repo/mongoose.cpp")
	
set_property(TARGET mongoose PROPERTY FOLDER "Addons")
