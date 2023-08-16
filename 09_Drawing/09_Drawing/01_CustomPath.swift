//
//  01_CustomPath.swift
//  09_Drawing
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 22/6/23.
//

import SwiftUI

struct _1_CustomPath: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
            path.closeSubpath()
        }
        .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct _1_CustomPath_Previews: PreviewProvider {
    static var previews: some View {
        _1_CustomPath()
    }
}
