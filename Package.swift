// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorObjC",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorObjC", targets: ["XMediatorObjCTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", exact: "1.170.1"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorObjC/XMediatorObjC-1.170.1.0.zip",
            checksum: "54eee85f0ce49b56d751bf2e3f6399a9f57ccce3960f77d0bf2c7df5e123b3e8"
        ),
    ]
)
