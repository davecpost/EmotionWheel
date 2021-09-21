//
//  EmotionsTest.swift
//  EmotionWheelTests
//
//  Created by David Post on 2021-09-21.
//

import Foundation
import SwiftUI

import XCTest
@testable import EmotionWheel

class EmotionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEmotionColor() throws {
        XCTAssertEqual(Emotion.getColor(for: "Sad"), Color.blue)
        XCTAssertEqual(Emotion.getColor(for: "Worried"), Color.purple)
        XCTAssertEqual(Emotion.getColor(for: "blah"), nil)
        
    }
}
