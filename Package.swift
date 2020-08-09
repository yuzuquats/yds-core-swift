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
        "YZDesignSystem",
        "YZDesignSystemMacOS",
        "YZImage",
    ]),
    .library(
      name: "YZDesignSystemCatalyst",
      targets: [
        "YZDesignSystem",
        "YZDesignSystemMacOS",
        "YZImage",
      ]),
  ],
  targets: [
    .target(
      name: "YZDesignSystemMacOS",
      path: "Sources/YZDesignSystem",
      sources: [
        "YZVisualEffectViewMacOS.swift",
      ]
    ),
    .target(
      name: "YZDesignSystem",
      path: "Sources/YZDesignSystem",
      sources: [
        "Page.swift",
        "Utils.swift",
        "VisualEffectView.swift",
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
    .target(
      name: "YZDesignSystemCatalyst",
      path: "Sources/YZDesignSystem",
      sources: [
        "Button.swift",
        "Commands.swift",
      ]
    ),
    .testTarget(
      name: "YZDesignSystemTests",
      dependencies: ["YZDesignSystem"]),
  ]
)
