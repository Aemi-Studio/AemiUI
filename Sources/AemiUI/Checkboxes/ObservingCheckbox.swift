//
//  ObservingCheckbox.swift
//  AemiUI
//
//  Created by Gigi on 28/01/25.
//

import SwiftUI
import AemiUtilities

public struct ObservingCheckbox<T>: View {

    public let value: T
    public let symbolProvider: (T) -> CheckboxSymbol?
    public let backgroundStyleProvider: (T) -> any ShapeStyle

    @ScaledMetric
    private var size: CGFloat = 24

    private var symbol: String? {
        symbolProvider(value)?.rawValue
    }

    private var backgroundStyle: AnyShapeStyle {
        AnyShapeStyle(backgroundStyleProvider(value))
    }

    private var isKnown: Bool {
        symbol != nil
    }

    public var body: some View {
        RoundedRectangle(cornerRadius: 6)
            .foregroundStyle(backgroundStyle)
            .frame(width: size, height: size)
            .if(isKnown) {
                $0.overlay {
                    Image(systemName: symbol!)
                        .foregroundStyle(.white)
                        .font(.callout)
                        .fontWeight(.bold)
                }
            }
            .overlay {
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.primary.quaternary, lineWidth: 0.5)
            }
    }
}
