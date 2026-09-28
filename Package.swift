// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorObjC",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorObjC", targets: ["XMediatorObjCTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", exact: "1.172.0"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorObjC/XMediatorObjC-1.172.0.0.zip",
            checksum: "d1455351553cdc514937d17aa835b3d0430aba019fb27d3d0edc5fd3fc6d69cd"
        ),
    ]
)
