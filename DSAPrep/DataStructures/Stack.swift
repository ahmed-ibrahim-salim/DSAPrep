//
//  Stack.swift
//  DSAPrep
//
//  Created by Ahmad medo on 07/01/2023.
//

import Foundation

struct Stack<Element>{
    private var storage: [Element] = []
    
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    func balanceParentheses(data: String)->Bool{
        var stack = Stack<Character>()

        for char in data{
            if char == "("{
                stack.push(char)
            }else if char == ")"{
                if stack.storage.isEmpty{
                    return false
                }else{
                    stack.pop()
                }
            }
        }
        
        return stack.storage.isEmpty
    }
    
    func reverseAnArray<T>(array: [T])->[T]{
        var stack: Stack<T> = Stack<T>()
        
        // push array items to stack
        for item in array{
            stack.push(item)
        }
        
        var revesedArray = [T]()
        // pop item if found and append to array
        while let item = stack.pop(){
            revesedArray.append(item)
        }
        
        return revesedArray
    }
    
}
// pass array elements
extension Stack: ExpressibleByArrayLiteral{
    typealias ArrayLiteralElement = Element
    
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

extension Stack: CustomStringConvertible {
    
    var description: String{
        
        """
        ----top----
        \(storage.map { "\($0)" }
                .reversed()
                .joined(separator: "\n"))
        """
        
    }
}

