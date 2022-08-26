// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.6"
let moduleName = "TestFramework"
let checksum = "a5f5182036d36141eb539888cc00e0b5a6861f3e8b55467543e304801d7a8dab"

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
                    url: "https://github.com/arthuroli29/\(moduleName)Distribution/releases/download/\(version)/\(moduleName).xcframework.zip",
                    checksum: checksum
        )
    ]
)
