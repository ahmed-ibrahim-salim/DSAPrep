//
//  LinkedLists.swift
//  DSAPrep
//
//  Created by Ahmad medo on 13/01/2023.
//

import Foundation

class Node<Value>{
    public var value: Value
    public var next: Node?
    
    init(value: Value, next: Node? = nil) {
        
        self.value = value
        self.next = next
        
    }
}

struct LinkedList<Value> {
    
    var head: Node<Value>?
    var tail: Node<Value>?
    
    init(){}
    
    func node(at index: Int)->Node<Value>?{
        guard index > 0 else{
            print("not found")
            return nil
        }
        var currentNode = head
        for _ in 0..<index{
            // when node does not have nextValue at given index
            guard let item = currentNode?.next else{
                print("not found")
                return nil
            }
            currentNode = item
        }
        return currentNode
    }
    
    mutating func insert(after index: Int,
                         node: Node<Value>)->Node<Value>?{
        
        guard let foundNode = self.node(at: index) else{
            return nil
        }
        guard let nextNode = foundNode.next else{
            self.append(value: node.value)
            return tail
        }
        
        node.next = nextNode
        foundNode.next = node
        
        return self.node(at: index + 1)
        
    }
    mutating func append(value: Value){
        
        if head == nil{
            head = Node(value: value)
            tail = head
        }else{
            tail!.next = Node(value: value)
            tail = tail!.next
        }
    }
    mutating func push(value: Value){
        head = Node(value: value, next: head)
        /*
          A linked list wit one item then this item is the head and tail also
         */
        if tail == nil{
            // tail becomes the new head.
            tail = head
        }
    }
    var isEmpty: Bool {
        head == nil
    }
    
}
extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}



extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            // if does not have a next node, just print value
            return "\(value)"
        }
        // if does have a next node then print both seperated by an arrow
        return "\(value) -> " + String(describing: next) + " "
    }
}
