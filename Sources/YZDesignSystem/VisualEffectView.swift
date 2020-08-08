import Foundation
import AppKit
import SwiftUI

public struct VisualEffectView: NSViewRepresentable {
  public typealias NSViewType = NSVisualEffectView
  
  var material: NSVisualEffectView.Material?
  public func makeNSView(context: NSViewRepresentableContext<Self>) -> NSVisualEffectView { NSVisualEffectView() }
  public func updateNSView(_ nsView: NSVisualEffectView, context: NSViewRepresentableContext<Self>) { nsView.material = material! }
}
