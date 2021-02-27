import SwiftUI

public struct Card<Content: View>: View {
  
  public let content: Content

  @inlinable public init(@ViewBuilder content: () -> Content)
  {
    self.content = content()
  }
  
  public var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 8, style: .continuous)
        .fill(Color(.white))
        .cardEffect()
      
      content
    }
  }
}

public extension View {
  func cardEffect() -> some View {
    return
      self
      .cornerRadius(20)
      .shadow(color: Color.init(white: 0.7), radius: 8, x: 4, y: 4)
  }
}
