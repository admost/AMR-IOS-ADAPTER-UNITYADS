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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-UNITYADS/releases/download/4.19.0/AMRAdapterUnity.xcframework.zip",
            checksum: "cb185b9ca0574fdd7c940b7384fa8240288c821dc6cdcd3a3ae630b42d890dd6"
        ),
        .binaryTarget(
            name: "UnityAdsLib",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.19.0/UnityAds.zip",
            checksum: "526c3a285dfa3216d5a065d99533cfa67cd2b8a872b230811a8907c9e5ebec4a"
        )
    ]
)
