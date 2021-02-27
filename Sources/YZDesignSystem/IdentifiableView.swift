import SwiftUI

public struct IdentifiableView<Content, ID>: View & Identifiable
  where
    ID : Hashable,
    Content: View
{
  
  public let content: Content
  public var id: ID
  
  @inlinable public init(id: ID, @ViewBuilder content: () -> Content)
  {
    self.content = content()
    self.id = id
  }
  
  public var body: some View {
    AnyView(content)
  }
}
