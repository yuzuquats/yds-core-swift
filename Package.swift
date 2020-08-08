// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "YZDesignSystem",
  platforms: [
    .macOS(.v10_15), .iOS(.v13), .tvOS(.v13)
  ],
  products: [
    .library(
      name: "YZDesignSystem",
      targets: [
        "YZDesignSystem",
      ]),
    .library(
      name: "YZDesignSystemMacOS",
      targets: [
        "YZDesignSystemMacOS",
        "YZImage",
    ]),
  ],
  targets: [
    .target(
      name: "YZDesignSystemMacOS",
      path: "Sources/YZDesignSystem",
      sources: [
        "Commands.swift",
        "YZVisualEffectViewMacOS.swift",
      ]
    ),
    .target(
      name: "YZDesignSystem",
      path: "Sources/YZDesignSystem",
      sources: [
        "Button.swift",
        "Page.swift",
        "Utils.swift",
        "YZClockView.swift",
        "YZDepressedView.swift",
        "YZDesignSystem.swift",
        "YZElevatedView.swift",
        "YZTabBar.swift",
        "YZSwiftUIPagerView.swift",
      ]
    ),
    .target(
      name: "YZImage",
      path: "Sources/YZImage",
      sources: [
        "AsyncImage.swift",
        "EnvironmentValues+ImageCache.swift",
        "ImageCache.swift",
        "ImageLoader.swift",
      ]
    ),
    .testTarget(
      name: "YZDesignSystemTests",
      dependencies: ["YZDesignSystem"]),
  ]
)
