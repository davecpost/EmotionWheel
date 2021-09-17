//
//  SegmentedWheel.swift
//  EmotionWheel
//
//  Created by David Post on 2021-09-06.
//

import SwiftUI

struct SegmentedWheel: View {
    let segmentCount: Int
    var segments: some View {
        ForEach(0..<segmentCount) { i in
            let degrees = (360/Double(segmentCount))*Double(i)
            let hue: Double = degrees/360
            CircleSegment(fraction: 1/Double(segmentCount))
                .rotation(Angle(degrees: degrees))
                .fill(Color(hue: 1-hue, saturation: 1, brightness: 1))
        }
    }
    var body: some View {
        ZStack {
            segments
        }
    }
}

struct SegmentedWheel_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedWheel(segmentCount: 8)
    }
}
