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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-UNITYADS/releases/download/4.17.1/AMRAdapterUnity.xcframework.zip",
            checksum: "891023f3bd21cc9a11eb7ffc1adad5223fa1d0bffeee333722426dfa79ff3498"
        ),
        .binaryTarget(
            name: "UnityAdsLib",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.17.0/UnityAds.zip",
            checksum: "8a40e6c779353e4ead87d4d635480cdae46f0b708763460dc002103e35ce8ba7"
        )
    ]
)
