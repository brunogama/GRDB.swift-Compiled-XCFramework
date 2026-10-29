// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "GRDB",
  platforms: [
    .iOS(.v15),
    .macOS(.v12),
    .tvOS(.v15),
    .watchOS(.v9),
    .visionOS(.v1),
  ],
  products: [
    .library(
      name: "GRDBSQLite",
      targets: ["GRDBSQLite"]
    ),
    .library(
      name: "GRDB",
      targets: ["GRDB"]
    ),
  ],
  targets: [
    .systemLibrary(
      name: "GRDBSQLite",
      providers: [.apt(["libsqlite3-dev"])]
    ),
    .binaryTarget(
      name: "GRDB",
      url: "https://github.com/brunogama/GRDB.swift-Compiled-XCFramework/releases/download/7.12.0/GRDB.xcframework.zip",
      checksum: "8cbbbee6f0f26edbfb99e8dcc1483ff5d14ddc55f986ff64f7d685b52fead2dd"
    ),
  ]
)
