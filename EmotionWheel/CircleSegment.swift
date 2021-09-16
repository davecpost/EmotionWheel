//
//  MyShape.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-06.
//

import Foundation
import CoreGraphics
import SwiftUI

struct CircleSegment: Shape {
    let fraction: Double
    private let pi = 3.14159
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = min(rect.maxX - rect.midX, rect.maxY - rect.midY)
        let theta = Angle(radians: 2 * pi * fraction)
        let center = CGPoint(x: rect.midX, y: rect.midY)
        path.move(to: center)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addArc(center: center, radius: radius, startAngle: Angle(radians: 0), endAngle: theta, clockwise: false)
        path.closeSubpath()
        return path
    }
}
