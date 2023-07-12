// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPackages",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "SwiftPackages",
            targets: ["SwiftPackages"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.6.0")),
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.6.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.7.0")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.8.0")),
        .package(url: "https://github.com/ReactorKit/ReactorKit.git", .upToNextMajor(from: "3.2.0"))
    ],
    targets: [
        .target(
            name: "SwiftPackages",
            dependencies: [
                "RxSwift",
                "SnapKit",
                "Alamofire",
                "Kingfisher",
                "ReactorKit"
            ]),
        .testTarget(
            name: "SwiftPackagesTests",
            dependencies: ["SwiftPackages"]),
    ],
    swiftLanguageVersions: [.v5]
)
