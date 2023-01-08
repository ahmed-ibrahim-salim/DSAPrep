//
//  DSAPrepTests.swift
//  DSAPrepTests
//
//  Created by Ahmad medo on 07/01/2023.
//

import XCTest
@testable import DSAPrep

final class DynamicArrayTests: XCTestCase {
    var dynamicArray: DynamicArray!

    override func setUpWithError() throws {
        dynamicArray = DynamicArray(capacity: 10)

    }
    
    override func tearDownWithError() throws {
        dynamicArray = nil
    }
    
    func testDynamicArray(){
        dynamicArray.add(data: "item0")
        dynamicArray.add(data: "item1")
        dynamicArray.add(data: "item2")
        dynamicArray.add(data: "item3")
       

        let itemToInsert = "NewItemzero"
        let indexForInsertion = 1
        dynamicArray.insert(index: indexForInsertion,
                            data: itemToInsert)


        XCTAssertEqual(dynamicArray.array[indexForInsertion], itemToInsert)
        print("-------------------------")
        print(dynamicArray.toString())
        print("size:",dynamicArray.size)
        print("capacity:", dynamicArray.capacity)
        print("empty:",dynamicArray.isEmpty())
        print("-------------------------")

    }
    func test_delete(){
        dynamicArray.add(data: "item0")
        dynamicArray.add(data: "item1")
        dynamicArray.add(data: "item2")
        dynamicArray.add(data: "item3")
        dynamicArray.add(data: "item2")
        dynamicArray.add(data: "item3")
        dynamicArray.add(data: "item2")
        dynamicArray.add(data: "item3")
        dynamicArray.add(data: "item2")
        dynamicArray.add(data: "item3")
        dynamicArray.add(data: "item2")
        dynamicArray.add(data: "item3")
        dynamicArray.add(data: "item2")
        dynamicArray.add(data: "item3")
        
        dynamicArray.delete(data: "item0")
        dynamicArray.delete(data: "item2")
        dynamicArray.delete(data: "item3")
        dynamicArray.delete(data: "item2")
        dynamicArray.delete(data: "item3")
        dynamicArray.delete(data: "item2")
        dynamicArray.delete(data: "item3")
        dynamicArray.delete(data: "item2")

        
        XCTAssertFalse(dynamicArray.array.contains("item0"))
        
        print("-------------------------")
        print(dynamicArray.toString())
        print("size:",dynamicArray.size)
        print("capacity:", dynamicArray.capacity)
        print("empty:",dynamicArray.isEmpty())
        print("-------------------------")
    }
    func test_Search_ItemInsideArray_ReturnsIndex(){
        dynamicArray.add(data: "item0")
        dynamicArray.add(data: "item1")
        
        let index = dynamicArray.search(data: "item1")
        
        XCTAssertNotNil(index)
    }
    
    func test_Search_ItemNotInArray_ReturnsNil(){
        dynamicArray.add(data: "item0")
        dynamicArray.add(data: "item1")
        
        let index = dynamicArray.search(data: "item3")
        
        XCTAssertNil(index)
    }
}
