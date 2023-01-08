//
//  CountBitsTests.swift
//  DSAPrepTests
//
//  Created by Ahmad medo on 08/01/2023.
//

import XCTest
@testable import DSAPrep

final class CountBitsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func test_CountBits(){
        let count = CountBits.count_bits(x: 25)
        
        XCTAssertEqual(3, count)
    }

}
//25 1
//12 0
//6 0
//3 1
//1 1
// 11001
