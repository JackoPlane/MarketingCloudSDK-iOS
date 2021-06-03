// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MarketingCloudSDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "MarketingCloudSDK", targets: ["MarketingCloudSDK", "MarketingCloudSDK-Bundle"]),
    ],
    targets: [
        // Bundle resources
        .target(name: "MarketingCloudSDK-Bundle",
                path: "./",
                exclude:["MarketingCloudSDK/MarketingCloudSDK.dSYMs", "MarketingCloudSDK/MarketingCloudSDK.BCSymbolMaps", "MarketingCloudSDK/MarketingCloudSDK.xcframework", "LearningApp/", "README.md", "LICENSE.md"],
                resources: [
                    .copy("MarketingCloudSDK/MarketingCloudSDK.bundle")
                ]
        ),

        // Binary framework
        .binaryTarget(name: "MarketingCloudSDK", path: "MarketingCloudSDK/MarketingCloudSDK.xcframework")
    ]
)
