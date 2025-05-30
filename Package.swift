// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterBicepParams",
    products: [
        .library(name: "TreeSitterBicepParams", targets: ["TreeSitterBicepParams"]),
    ],
    dependencies: [
        .package(url: "https://github.com/oWretch/tree-sitter-bicep-params", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterBicepParams",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterBicepParamsTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterBicepParams",
            ],
            path: "bindings/swift/TreeSitterBicepParamsTests"
        )
    ],
    cLanguageStandard: .c11
)
