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
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84")
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-UNITYADS/releases/download/4.17.0/AMRAdapterUnity.xcframework.zip",
            checksum: "ac2aec4f7e9fa7d8aeaba5cde5a11062ee5dafc75bab467836f5a153c92b2dd1"
        ),
        .binaryTarget(
            name: "UnityAdsLib",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.17.0/UnityAds.zip",
            checksum: "8a40e6c779353e4ead87d4d635480cdae46f0b708763460dc002103e35ce8ba7"
        )
    ]
)
