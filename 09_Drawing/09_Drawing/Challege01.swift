//
//  Challege01.swift
//  09_Drawing
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 6/7/23.
//

import SwiftUI
struct Arrow: Shape {
    var lineThickness: CGFloat

        var animatableData: CGFloat {
            get { lineThickness }
            set { lineThickness = newValue }
        }
    func path(in rect: CGRect) -> Path {
        var path = Path()
                path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX - rect.width * 0.3, y: rect.minY))
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX - rect.width * 0.3, y: rect.maxY))
                return path
    }
}
struct Challege01: View {
    @State private var lineThickness: CGFloat = 10.0
    var body: some View {
        Arrow(lineThickness: lineThickness)
            .stroke(.red, style: StrokeStyle(lineWidth: lineThickness, lineCap: .round, lineJoin: .round))
            .frame(width: 300, height: 300)
            .animation(.easeInOut(duration: 1.0))
            .onAppear {
                lineThickness = 5.0
            }
    }
}

struct Challege01_Previews: PreviewProvider {
    static var previews: some View {
        Challege01()
    }
}
