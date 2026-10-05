// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterUnity",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterUnity",
            targets: ["AMRAdapterUnity"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.85")
    ],
    targets: [
        .target(
            name: "AMRAdapterUnity",
            dependencies: [
                "AMRAdapterUnityLib",
                "UnityAdsLib",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterUnity",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterUnityLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-UNITYADS/releases/download/4.21.0/AMRAdapterUnity.xcframework.zip",
            checksum: "ac781bfede7fa12191adf13c204fa1e6b8022c4ff6557c60ca6a2cba07010278"
        ),
        .binaryTarget(
            name: "UnityAdsLib",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.21.0/UnityAds.zip",
            checksum: "ca0b2a3c5529c0fd4211a8afa61390ded8a64ea218c69056cffbc2ad31c399f8"
        )
    ]
)
