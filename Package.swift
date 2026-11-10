// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorObjC",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorObjC", targets: ["XMediatorObjCTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", exact: "1.179.0"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorObjC/XMediatorObjC-1.179.0.0.zip",
            checksum: "9c3c9a6b29e4945c5ec85936fd83d909ec83fde89ee3bc7b243536974cf56e34"
        ),
    ]
)
