//
//  LoadingImageFromServer03.swift
//  10_CupcakeCorner
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 7/7/23.
//

import SwiftUI

struct LoadingImageFromServer03: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 200, height: 200)
        
        AsyncImage(url: URL(string: "https://hws.dev/img/bad.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
}

struct LoadingImageFromServer03_Previews: PreviewProvider {
    static var previews: some View {
        LoadingImageFromServer03()
    }
}
