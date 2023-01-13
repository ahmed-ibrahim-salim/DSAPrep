//
//  LinkedListTests.swift
//  DSAPrepTests
//
//  Created by Ahmad medo on 13/01/2023.
//

import XCTest
@testable import DSAPrep

final class LinkedListTests: XCTestCase {
    
    var linkedList: LinkedList<Int>!
    
    override func setUpWithError() throws {
        linkedList = LinkedList<Int>()
        linkedList.append(values: 1,2,3)
    }

    override func tearDownWithError() throws {
        linkedList = nil
    }

    func testNodes() throws {
        let node1 = Node(value: 1)
        let node2 = Node(value: 2)
        let node3 = Node(value: 3)

        node1.next = node2
        node2.next = node3
        
        print(node1)
    }
    
    func testFindNode(){
        
        XCTAssertEqual(3, linkedList.node(at: 2)?.value)
    }
    func test_InsertNodeAt(){
        
        let insertedNode0 = linkedList.insert(after: 6, node: Node(value: 5))
        let insertedNode = linkedList.insert(after: 1, node: Node(value: 0))
        
        print(linkedList)
        XCTAssertEqual(5, insertedNode0?.value)

        XCTAssertEqual(0, insertedNode?.value)
    }
    func test_popItem(){
        // when
        let popedItem = linkedList.pop()
        // then
        XCTAssertEqual(1, popedItem?.value)
    }
    func test_removeLastItem(){
        // when
        let removedItem = linkedList.removeLast()
        print(linkedList)

        // then
        XCTAssertEqual(3, removedItem?.value)
    }
    func test_removeAfter(){
        // when
        let removedItem = linkedList.remove(after: 0, node: Node(value: 4))
        print(linkedList)

        // then
        XCTAssertEqual(2, removedItem?.value)
    }
}
