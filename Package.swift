// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorObjC",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorObjC", targets: ["XMediatorObjCTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", exact: "1.173.0"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorObjC/XMediatorObjC-1.173.0.0.zip",
            checksum: "a9f0a00e3971deb731f673733ab7edf0d43263a91cbdf7b26c952a983865dff6"
        ),
    ]
)
