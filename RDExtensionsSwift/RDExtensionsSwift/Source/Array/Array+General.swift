//
//  Array+General.swift
//
//  Created by Giorgi Iashvili on 19.09.16.
//  Copyright (c) 2016 Giorgi Iashvili
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

public extension Array {
    
    /// RDExtensionsSwift: Return first n objects from array
    func first(n elements: Int) -> [Element]
    {
        var es : [Element] = []
        for i in 0 ..< (elements <= self.count ? elements : self.count)
        {
            es.append(self[i])
        }
        return es
    }
    
    /// RDExtensionsSwift: Return last n objects from array
    func last(n elements: Int) -> [Element]
    {
        var es : [Element] = []
        for i in 0 ..< (elements <= self.count ? elements : self.count)
        {
            es.append(self[self.count - 1 - (elements - 1 - i)])
        }
        return es
    }
    
    /// RDExtensionsSwift: Remove object from array
    mutating func remove <U: Equatable> (_ object: U) -> [U]?
    {
        if(self.count == 0)
        {
            return nil
        }
        
        var removedObjects : [U] = []
        var i = 0
        while(i < self.count)
        {
            if let element = self[i] as? U
            {
                if(element == object)
                {
                    self.remove(at: i)
                    removedObjects.append(element)
                    i -= 1
                }
            }
            i += 1
        }
        return removedObjects
    }
    
    /// RDExtensionsSwift: Insert contents of new elements and return new array
    func insertContentsOf(_ newElements: [Element], atIndex: Int) -> [Element]
    {
        var array = Array(self)
        var index = atIndex
        for e in newElements
        {
            array.insert(e, at: index)
            index += 1
        }
        return array
    }
    
}

public extension Array where Element : _ArrayProtocol {
    
    /// RDExtensionsSwift: Return element at indexPath
    subscript(indexPath: IndexPath) -> Element.Iterator.Element?
    {
        return self.object(at: indexPath)
    }
    
    /// RDExtensionsSwift: Return element at indexPath
    func object(at indexPath: IndexPath) -> Element.Iterator.Element?
    {
        if(indexPath.section < self.count && indexPath.row < self[indexPath.section].count)
        {
            return self[indexPath.section][indexPath.row]
        }
        return nil
    }
    
    /// RDExtensionsSwift: Remove and return the element at indexPath
    mutating func remove(at indexPath: IndexPath) -> Element.Iterator.Element?
    {
        if(indexPath.section < self.count && indexPath.row < self[indexPath.section].count)
        {
            return self[indexPath.section].remove(at: indexPath.row)
        }
        return nil
    }
    
}

public extension Array where Element : Equatable
{
    /// RDExtensionsSwift: Return indexes of elements
    func indexes(of elements: [Element]) -> [Int]
    {
        var indexes : [Int] = []
        for element in elements
        {
            if let indx = self.index(of: element)
            {
                indexes.append(indx)
            }
        }
        return indexes
    }
    
    /// RDExtensionsSwift: Return the previous element of the given element
    func previous(of object: Element) -> Element?
    {
        if let index = self.index(of: object), index > 0
        {
            return self[index - 1]
        }
        return nil
    }
    
    /// RDExtensionsSwift: Return the next element of the given element
    func next(of object: Element) -> Element?
    {
        if let index = self.index(of: object), index < self.count - 1
        {
            return self[index + 1]
        }
        return nil
    }
}
