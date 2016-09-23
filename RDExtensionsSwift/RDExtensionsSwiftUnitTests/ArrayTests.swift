//
//  ArrayTests.swift
//
//  Created by Giorgi Iashvili on 23.09.16.
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

import XCTest
import RDExtensionsSwift

public class ArrayTests : XCTestCase {
    
    func testRemove()
    {
        let o1 = NSObject()
        let o2 = o1
        let o3 = NSObject()
        var array = [o1, o2, o3]
        let removedObjects = array.remove(o1)
        XCTAssertNotNil(removedObjects)
        XCTAssertEqual(removedObjects!, [o1, o2])
    }
    
    func testInsertContentsOfNewElementsAtIndex()
    {
        let o1 = NSObject()
        let o2 = NSObject()
        let array = [o1, o2]
        let o3 = NSObject()
        let o4 = NSObject()
        XCTAssertEqual(array.insertContentsOf([o3, o4], atIndex: 1), [o1, o3, o4, o2])
        XCTAssertEqual(array, [o1, o2])
    }
    
    func testObjectAtIndexPath()
    {
        let o = NSObject()
        let array = [[NSObject()], [o, NSObject()]]
        XCTAssertEqual(array[NSIndexPath(forRow: 0, inSection: 1)], o)
    }
    
    func testRemoveObjectAtIndexPath()
    {
        let o1 = NSObject()
        let o2 = NSObject()
        let o3 = NSObject()
        var array = [[o1], [o2, o3]]
        XCTAssertEqual(array.removeAtIndexPath(NSIndexPath(forRow: 0, inSection: 1)), o2)
        XCTAssertEqual(array, [[o1], [o3]])
    }
    
}
