//
//  01_resizeImage.swift
//  08_Moonshot
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 8/6/23.
//

import SwiftUI

struct _1_resizeImage: View {
    var body: some View {
        GeometryReader { geo in
            Image("example")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct _1_resizeImage_Previews: PreviewProvider {
    static var previews: some View {
        _1_resizeImage()
    }
}
