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
            targets: ["PWLocationTargets"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name:"PWCore", url:"https://github.com/phunware/maas-core-ios-sdk.git", .branch("release/3.12.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        .binaryTarget(
            name: "PWLocation",
            path: "FrameworksStaticLinks/PWLocation.xcframework"
        ),
        .target(name: "PWLocationTargets",
            dependencies:[
                .target(name: "PWLocation"),
                .product(name: "PWCore", package: "PWCore", condition: nil),
                .product(name: "DeviceIdentity", package: "PWCore", condition: nil)
            ],
            path: "PWLocationTargets"
        )
    ]
)
