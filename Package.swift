// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let moduleName = "NetworkModule"
let checksum = "8f42f67a0665798e1c4e149c73a36fb9dddc062bc90e3b4e077ea571613ddda1"

let package = Package(
    name: moduleName,
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: moduleName,
            targets: [moduleName]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                    name: moduleName,
                    url: "https://github.com/litoarias/NetworkModuleDistribution/releases/download/\(version)/\(moduleName).xcframework.zip",
                    checksum: checksum
        )
    ]
)
