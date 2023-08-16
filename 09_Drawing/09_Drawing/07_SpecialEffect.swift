//
//  07_SpecialEffect.swift
//  09_Drawing
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 6/7/23.
//

import SwiftUI

struct _7_SpecialEffect: View {
    @State private var amount = 0.0

        var body: some View {
            VStack {
                ZStack {
                    Circle()
                        .fill(.red)
                        .frame(width: 200 * amount)
                        .offset(x: -50, y: -80)
                        .blendMode(.screen)

                    Circle()
                        .fill(.green)
                        .frame(width: 200 * amount)
                        .offset(x: 50, y: -80)
                        .blendMode(.screen)

                    Circle()
                        .fill(.blue)
                        .frame(width: 200 * amount)
                        .blendMode(.screen)
                }
                .frame(width: 300, height: 300)

                Slider(value: $amount)
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .ignoresSafeArea()
        }
}

struct _7_SpecialEffect_Previews: PreviewProvider {
    static var previews: some View {
        _7_SpecialEffect()
    }
}
