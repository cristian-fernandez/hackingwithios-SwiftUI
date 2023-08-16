//
//  ContentView.swift
//  weatherPicture
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(stops: [
                    .init(color: .blue, location: 0.25),
                    .init(color: Color(red: 0.14, green: 0.37, blue: 1.00), location: 0.25),
                ]), startPoint: .top, endPoint: .bottom)
            ExtractedView()
        }
        .ignoresSafeArea()
    }
}

struct weatherView: View {
    var dateText:String
    var image:String
    
    var body : some View {
        VStack (spacing: 10) {
            Text(dateText)
            Image(systemName: image)
                .renderingMode(.original)
                .imageScale(.large)
                
            Text("76°")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack (spacing:30) {
            weatherView(dateText: "TUE", image:"cloud.sun.fill")
            weatherView(dateText: "WED", image: "sun.max.fill")
            weatherView(dateText: "THU", image: "cloud.sun.bolt.fill")
            weatherView(dateText: "FRI", image: "cloud.sun.rain.fill")
            weatherView(dateText: "SAT", image: "wind.snow")
        }
        .ignoresSafeArea()
        .padding()
        .foregroundColor(.white)
    }
}
