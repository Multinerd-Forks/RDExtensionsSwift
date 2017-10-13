//
//  Float+Conversion.swift
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

public extension Float {
    
    /// RDExtensionsSwift: Convert Float to String
    var toString : String { get { return self.toDouble.toString } }
    
    /// RDExtensionsSwift: Return Float as String with rounding
    func toString(_ rounding: Int = 2) -> String
    {
        return self.toDouble.toString(rounding)
    }
    
    /// RDExtensionsSwift: Convert Float to Int
    var toInt : Int { return Int(self) }
    
    /// RDExtensionsSwift: Convert Float to Int32
    var toInt32 : Int32 { get { return Int32(self) } }
    
    /// RDExtensionsSwift: Convert Float to Int64
    var toInt64 : Int64 { get { return Int64(self) } }
    
    /// RDExtensionsSwift: Convert Float to CGFloat
    var toCGFloat : CGFloat { get { return CGFloat(self) } }
    
    /// RDExtensionsSwift: Convert Float to Double
    var toDouble : Double { get { return Double(self) } }
    
    /// RDExtensionsSwift: Convert Float to Bool
    var toBool : Bool { get { return self != 0 } }
    
}
