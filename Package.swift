// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "GRDB",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v7),
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
      url: "https://github.com/brunogama/GRDB.swift-Compiled-XCFramework-/releases/download/7.9.0/GRDB.xcframework.zip",
      checksum: "875411c8983630a2499f6ac07aac45577dcc45dce2693a75692be15f97765be9"
    ),
  ]
)
