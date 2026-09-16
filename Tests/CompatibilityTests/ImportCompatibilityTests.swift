import AemiUI
import Testing

@Test
func `legacy product exposes the shared Aemi implementation`() {
  let symbol: CheckboxSymbol = .checkmark
  #expect(symbol.rawValue == "checkmark")
  #expect(CheckboxSymbol.allCases.count == 4)
}
