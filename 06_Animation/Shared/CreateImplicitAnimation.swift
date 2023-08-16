//
//  CreateImplicitAnimation.swift
//  06_Animation (iOS)
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 21/4/23.
//

import SwiftUI

struct CreateImplicitAnimation: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me"){
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

struct CreateImplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CreateImplicitAnimation()
    }
}
