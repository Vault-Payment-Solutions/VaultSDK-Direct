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
            url: "https://api.github.com/repos/Vault-Payment-Solutions/VaultSDK-Direct/releases/assets/460757527.zip",
            checksum: "c28b6350c24d020ff0d7af55a66970be024ea1a353d3d274992f9dcc3166536a"
        )
    ]
)

