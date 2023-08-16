//
//  Gradients.swift
//  GuessTheFlag
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/2/23.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        //LinearGradient(gradient: Gradient(stops: [
        //        .init(color: .white, location: 0.45),
        //        .init(color: .black, location: 0.55),
        //    ]), startPoint: .top, endPoint: .bottom)
        
        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
        
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
