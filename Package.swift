// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "VaultSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VaultSDK",
            targets: ["VaultSDKWithDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/verygoodsecurity/vgs-show-ios.git", exact: "1.1.4")
    ],
    targets: [
        .target(
            name: "VaultSDKWithDeps",
            dependencies: [
                "VaultSDK",
                .product(name: "VGSShowSDK", package: "vgs-show-ios"),
            ]
        ),
        .binaryTarget(
            name: "VaultSDK",
            url: "https://api.github.com/repos/Vault-Payment-Solutions/VaultSDK-Direct/releases/assets/531631300.zip",
            checksum: "01252f659c5508a20aa19ea0fa89e41bd7b3553e766a741c0397d1dae47b5294"
        )
    ]
)

