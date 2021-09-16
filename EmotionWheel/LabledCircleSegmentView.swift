//
//  LabledCircleSegmentView.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-07.
//

import SwiftUI

struct LabledCircleSegmentView: View {
    var fraction: Double
    var color: Color
    var label: String
    var body: some View {
        ZStack {
            CircleSegment(fraction: fraction)
                .fill(color)
            GeometryReader { geo in
                let midY: CGFloat = geo.frame(in: .local).midY
                let midX: CGFloat = geo.frame(in: .local).midY
                Text(label)
                    .position(x: midX-70, y: midY+10)
            }
        }
    }
}

struct LabledCircleSegmentView_Previews: PreviewProvider {
    static var previews: some View {
        LabledCircleSegmentView(fraction: 1/6, color: .blue, label: "Hello World")
    }
}
