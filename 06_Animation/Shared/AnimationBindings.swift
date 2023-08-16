//
//  AnimationBindings.swift
//  06_Animation (iOS)
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 27/4/23.
//

import SwiftUI

struct AnimationBindings: View {
    @State private var animationAmount = 1.0
    var body: some View {
        print(animationAmount)
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)
            ),in:1...10)
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct AnimationBindings_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBindings()
    }
}
