// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "CodableCSV",
    platforms: [
        .macOS(.v10_13), .iOS(.v14), .tvOS(.v14), .watchOS(.v6)
    ],
    products: [
        .library(name: "CodableCSV", targets: ["CodableCSV"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "CodableCSV", dependencies: [], path: "sources"),
        .testTarget(name: "CodableCSVTests", dependencies: ["CodableCSV"], path: "tests"),
        .testTarget(name: "CodableCSVBenchmarks", dependencies: ["CodableCSV"], path: "benchmarks")
    ]
)
