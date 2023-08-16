//
//  05_CreateBordersImagePaint.swift
//  09_Drawing
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 5/7/23.
//

import SwiftUI

struct _5_CreateBordersImagePaint: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
            .frame(width: 300, height: 200)
    }
}

struct _5_CreateBordersImagePaint_Previews: PreviewProvider {
    static var previews: some View {
        _5_CreateBordersImagePaint()
    }
}
