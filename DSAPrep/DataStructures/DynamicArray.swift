//
//  DynamicList.swift
//  DSAPrep
//
//  Created by Ahmad medo on 06/01/2023.
//

import Foundation

// Data Structure
class DynamicArray{
    var size: Int
    var capacity: Int
    
    var array: [String?]{
        didSet{
            size = array.count
        }
    }
    
    init(capacity: Int = 10,
         size: Int = 0,
         array: [String?] = [String]()) {
        self.capacity = capacity
        self.size = size
        self.array = array
    }
    
    func add(data: String){
        if array.count >= capacity{
            grow()
        }
        array.append(data)
    }
    func insert(index: Int, data: String){
        if array.count >= capacity{
            grow()
        }
        if index == 0{
            // if index is the first
            var newArray: [String?] = [data]
            for oldItem in array{
                newArray.append(oldItem)
            }
            array = newArray
        }else if index >= array.count{
            array.append(data)
        }else{
            var newArray: [String?] = []
            for oldIndex in 0..<index{
                newArray.append(array[oldIndex])
            }
            newArray.append(data)
            
            for oldIndex in index..<array.count{
                newArray.append(array[oldIndex])
            }
            array = newArray
        }
        
    }
    func delete(data: String){
        for itemToDeleteIndex in 0..<array.count{
            if 0..<array.count ~= itemToDeleteIndex{
                if array[itemToDeleteIndex] == data{
                    array.remove(at: itemToDeleteIndex)
                    if array.count < (capacity / 3){
                        shrink()
                    }
                }
                
            }
        }
    }
    func search(data: String)->Int?{
        for index in 0..<array.count{
            if array[index] == data{
                return index
            }
        }
        return nil
    }
    func isEmpty()->Bool{
        return array.isEmpty
    }
    private func grow(){
        var newArray: [String?] = []
        for item in array{
            newArray.append(item)
        }
        array = newArray
        capacity = capacity * 2
        
    }
    func toString()-> String{
        var outerString = ""
        for index in 0..<capacity{
            let item = 0..<array.count ~= index ? array[index] ?? "nil" : "nil"
            outerString += item + " "
        }
        return outerString
    }
    
    private func shrink(){
        var newArray: [String?] = []
        for item in array{
            newArray.append(item)
        }
        array = newArray
        capacity = capacity / 2
    }
}
