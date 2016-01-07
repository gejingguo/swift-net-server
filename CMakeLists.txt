cmake_minimum_required(VERSION 3.4)
project(swift-net-server)

add_custom_target(swift-net-server
        COMMAND /Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin/swift build
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        SOURCES Package.swift Sources/main.swift Sources/ServerTCPDelegate.swift)
