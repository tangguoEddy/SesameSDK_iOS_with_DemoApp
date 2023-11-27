// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SesameSDK",
   platforms: [
       .iOS(.v12),
       .macOS(.v10_15),
       .watchOS(.v7)
   ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "SesameSDK", targets: ["SesameSDK"]),
//        .library(name: "SesameSDKc", targets: ["SesameSDKc"]),
        .library(name: "SesameWatchKitSDK", targets: ["SesameWatchKitSDK"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SesameSDK",
            dependencies: ["SesameSDKc"], // Add CAESCCM as a dependency
            // path: "Sources/SesameSDSwift",
            resources: [
                .process("DB/CHDeviceModel.xcdatamodeld"),
            ]
        ),
        .target(
            name: "SesameWatchKitSDK",
            dependencies: ["SesameSDKc"], // Add CAESCCM as a dependency
            // path: "Sources/SesameSDSwift",
            resources: [
                .process("DB/CHDeviceModel.xcdatamodeld"),
            ]
        ),
        .target(
           name: "SesameSDKc"
        )
    ]
//    swiftLanguageVersions: [
//        .v5
//    ]
)
