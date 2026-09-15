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
            url: "https://api.github.com/repos/Vault-Payment-Solutions/VaultSDK-Direct/releases/assets/564603064.zip",
            checksum: "934dea1ae87c49e7bd54961e25aa6987b216343a1c5e1d60a5e16a253679e9c5"
        )
    ]
)

