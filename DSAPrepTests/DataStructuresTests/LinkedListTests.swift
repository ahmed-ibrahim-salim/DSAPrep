//
//  LinkedListTests.swift
//  DSAPrepTests
//
//  Created by Ahmad medo on 13/01/2023.
//

import XCTest
@testable import DSAPrep

final class LinkedListTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testNodes() throws {
        let node1 = Node(value: 1)
        let node2 = Node(value: 2)
        let node3 = Node(value: 3)

        node1.next = node2
        node2.next = node3
        
        print(node1)
    }
    
    func test_PushTolinkedList(){
        var linkedList = LinkedList<Int>()
        linkedList.push(value: 1)
        linkedList.push(value: 2)
        linkedList.push(value: 3)
        
        print(linkedList)
    }
    func test_AppendTolinkedList(){
        var linkedList = LinkedList<Int>()
        linkedList.append(value: 1)
        linkedList.append(value: 2)
        linkedList.append(value: 3)
        
        print(linkedList)
    }
    
    func testFindNode(){
        var linkedList = LinkedList<Int>()
        linkedList.append(value: 1)
        linkedList.append(value: 2)
        linkedList.append(value: 3)
        
        XCTAssertEqual(3, linkedList.node(at: 2)?.value)
    }
    func test_InsertNodeAt(){
        
        var linkedList = LinkedList<Int>()
        linkedList.append(value: 1)
        linkedList.append(value: 2)
        linkedList.append(value: 3)
        
        let insertedNode = linkedList.insert(after: 1, node: Node(value: 0))
        
        print(linkedList)
        XCTAssertEqual(0, insertedNode?.value)
        }

}
