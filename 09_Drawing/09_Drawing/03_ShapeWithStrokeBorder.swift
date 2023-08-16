//
//  03_ShapeWithStrokeBorder.swift
//  09_Drawing
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 5/7/23.
//

import SwiftUI

struct Arc03: InsettableShape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    var insetAmount = 0.0

    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
            let modifiedStart = startAngle - rotationAdjustment
            let modifiedEnd = endAngle - rotationAdjustment

            var path = Path()
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)

            return path
    }
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}


struct _3_ShapeWithStrokeBorder: View {
    var body: some View {
        Arc03(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
            .strokeBorder(.blue, lineWidth: 40)
    }
}

struct _3_ShapeWithStrokeBorder_Previews: PreviewProvider {
    static var previews: some View {
        _3_ShapeWithStrokeBorder()
    }
}
