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
      url: "https://github.com/brunogama/GRDB.swift-Compiled-XCFramework-/releases/download/7.10.0/GRDB.xcframework.zip",
      checksum: "5a86851b6415d6ad6db5a64d5ac8cd903f0c7bd41ea01d4337cc113bbfa2e2b2"
    ),
  ]
)
