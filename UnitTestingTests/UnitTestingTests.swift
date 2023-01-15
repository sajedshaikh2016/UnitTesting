//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Sajed Shaikh on 15/01/23.
//

import XCTest
@testable import UnitTesting

final class UnitTestingTests: XCTestCase {
    
    var simpleMath: SimpleMath!
    
    override func setUp() {
        simpleMath = SimpleMath()
    }

    override func tearDown() {
        simpleMath = nil
    }

    func testAddTenWorks() {
        // Given - Arrange
        var extected: Int = 0
        
        // When - Act
        extected = simpleMath.addTen(number: 10)
        
        // Then - Assert
        XCTAssert(extected == 20, "This should be 20")
        XCTAssertTrue(extected == 20)
        XCTAssertEqual(extected, 20, "This should be 20")
    }
    
    func testBeSquareSucceeds() {
        // Given - Arrange
        var expected: Int = 0
        
        // When - Act
        expected = simpleMath.beSquare(4)
        
        // Then - Assert
        XCTAssert(expected == 16, "This should be 16")
        XCTAssertTrue(expected == 16)
        XCTAssertEqual(expected, 16, "This should be 16")
    }

}
