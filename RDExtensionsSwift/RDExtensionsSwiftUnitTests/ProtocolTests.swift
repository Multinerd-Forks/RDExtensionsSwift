//
//  ProtocolTests.swift
//
//  Created by Giorgi Iashvili on 12.03.17.
//  Copyright (c) 2017 Giorgi Iashvili
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

import XCTest
import RDExtensionsSwift

public class ProtocolTests : XCTestCase {
    
    public enum kType : Int, Describable, Collectable {
        
        case one = 1
        case two = 2
        case three = 3
        
        public var description : String { get { return self.toString + " = " + self.rawValue.toString } }
        
    }
    
    func testToString()
    {
        XCTAssertEqual(kType.one.toString, "one")
    }
    
    func testDescription()
    {
        XCTAssertEqual(kType.one.description, "one = 1")
    }
    
    func testItems()
    {
        XCTAssertEqual(kType.items, [.one, .two, .three])
    }
    
    func testKeyValueArray()
    {
        let array1 = kType.keyValueArray
        let array2 = [("one", 1), ("two", 2), ("three", 3)]
        for i in 0 ..< array1.count
        {
            let lhs = array1[i]
            let rhs = array2[i]
            XCTAssertEqual(lhs.key, rhs.0)
            XCTAssertEqual(lhs.value, rhs.1)
        }
    }
    
    func testKeyValueDescriptionArray()
    {
        let array1 = kType.keyValueDescriptionArray
        let array2 = [("one", 1, "one = 1"), ("two", 2, "two = 2"), ("three", 3, "three = 3")]
        for i in 0 ..< array1.count
        {
            let lhs = array1[i]
            let rhs = array2[i]
            XCTAssertEqual(lhs.key, rhs.0)
            XCTAssertEqual(lhs.value, rhs.1)
            XCTAssertEqual(lhs.description, rhs.2)
        }
    }
    
}
