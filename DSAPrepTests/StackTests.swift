//
//  StackTests.swift
//  DSAPrepTests
//
//  Created by Ahmad medo on 07/01/2023.
//

import XCTest
@testable import DSAPrep

final class StackTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_Stack(){
        var stack: Stack<Int> = Stack(arrayLiteral: 1,2,3,4)
        
        let popped = stack.pop()
        
        XCTAssertEqual(4, popped)

    }
    func test_ReverseAnArray(){
        // given
        var stack = Stack<Int>()
        // when
        let reversedArray = stack.reverseAnArray(array: [1,2,3,4])
        
        XCTAssertEqual([4,3,2,1], reversedArray)
        
    }
    func test_BalanceParentheses(){
        var stack = Stack<Character>()

        let str = "h((e))llo(world)()"
        let balanced = stack.balanceParentheses(data: str)
        
        XCTAssertTrue(balanced)
    }
    func test_BalanceParentheses_False(){
        var stack = Stack<Character>()

        let str = ")"
        let balanced = stack.balanceParentheses(data: str)
        
        XCTAssertFalse(balanced)
    }

}
