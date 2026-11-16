// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorObjC",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorObjC", targets: ["XMediatorObjCTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", exact: "1.180.0"),
    ],
    targets: [
        .target(
            name: "XMediatorObjCTarget",
            dependencies: [
                .target(name: "XMediatorObjC"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
            ],
            path: "XMediatorObjCTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorObjC",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorObjC/XMediatorObjC-1.180.0.0.zip",
            checksum: "c2021e8440bb1903c23e0de3625d353b7faa29ff5c5ab3a2c3152ca26d9095c6"
        ),
    ]
)
