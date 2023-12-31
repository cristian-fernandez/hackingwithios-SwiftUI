//
//  AnimationGestures.swift
//  06_Animation (iOS)
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 27/4/23.
//

import SwiftUI

struct AnimationGestures: View {
    let letters = Array("Hello SwiftUI")
        @State private var enabled = false
        @State private var dragAmount = CGSize.zero

    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
    }
    
//    @State private var dragAmount = CGSize.zero
//    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomLeading)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation }
//                    .onEnded { _ in
//                        withAnimation{
//                            dragAmount = .zero
//                        }
//                    }
//            )
//            .animation(.spring(), value: dragAmount)
//    }
}

struct AnimationGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimationGestures()
    }
}
