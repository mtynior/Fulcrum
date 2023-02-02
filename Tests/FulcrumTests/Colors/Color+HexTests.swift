//
//  Color+HexTests.swift
//  Fulcrum
//
//  Created by Michal on 02/02/2023.
//

import XCTest
@testable import Fulcrum
import SwiftUI

final class ColorHexTests: XCTestCase {
    func testHexColorInitializer() {
        let textCases: [(hex: String, expectedColor: Color?, comment: String)] = [
            (hex: "FF0000", Color(red: 1, green: 0, blue: 0), "Should create color from red component"),
            (hex: "00FF00", Color(red: 0, green: 1, blue: 0), "Should create color from green component"),
            (hex: "0000FF", Color(red: 0, green: 0, blue: 1), "Should create color from blue component"),
            (hex: "FFFFFF00", Color(red: 1, green: 1, blue: 1, opacity: 0), "Should create color from alpha component"),
            (hex: "FFFFFF", Color(red: 1, green: 1, blue: 1), "Should create color from uppercased hex"),
            (hex: "ffffff", Color(red: 1, green: 1, blue: 1), "Should create color from lowercased hex"),
            (hex: "FFffFf", Color(red: 1, green: 1, blue: 1), "Should create color from PoKemOn hex"),
            (hex: "0xffffff", Color(red: 1, green: 1, blue: 1), "Should create from hex starting with 0x"),
            (hex: "#ffffff", Color(red: 1, green: 1, blue: 1), "Should create from hex starting with #"),
            (hex: "f09", Color(red: 1, green: 0, blue: 0.6), "Should create from 3 digit hex"),
            (hex: "Hello", nil, "Should return nil for hex that is not a color")
        ]
        
        for testCase in textCases {
            let actualColor = Color(hex: testCase.hex)
            XCTAssertEqual(actualColor, testCase.expectedColor, testCase.comment)
        }
    }
}
