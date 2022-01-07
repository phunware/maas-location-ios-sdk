// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PWLocation",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PWLocation",
            targets: ["PWLocation"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url:"https://github.com/phunware/maas-core-ios-sdk.git", .branch("task/3.12.0-spm"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        .binaryTarget(
            name: "PWLocation",
            path: "FrameworksStaticLinks/PWLocation.xcframework"
        )
    ]
)
