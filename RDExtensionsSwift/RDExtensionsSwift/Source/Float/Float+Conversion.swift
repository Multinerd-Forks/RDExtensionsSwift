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
    var toString : String { get { return "\(self)" } }
    
    /// RDExtensionsSwift: Return Float as String with rounding
    func toString(rounding: Int = 2) -> String
    {
        let decimalNumber = NSDecimalNumber(value: self)
        let formatter = NumberFormatter()
        formatter.decimalSeparator = "."
        formatter.positiveFormat = "0." + String(repeating: "0", count: rounding)
        formatter.negativeFormat = "0." + String(repeating: "0", count: rounding)
        let value = formatter.string(from: decimalNumber)
        return value ?? String(format: "%.\(rounding)f", self)
    }
    
    /// RDExtensionsSwift: Convert Float to Int
    var toInt : Int { return NSDecimalNumber(value: self).rounding(accordingToBehavior: NSDecimalNumberHandler(roundingMode: NSDecimalNumber.RoundingMode.down, scale: 0, raiseOnExactness: true, raiseOnOverflow: true, raiseOnUnderflow: true, raiseOnDivideByZero: true)).intValue }
    
    /// RDExtensionsSwift: Convert Float to Int8
    var toInt8 : Int8 { get { return NSDecimalNumber(value: self).rounding(accordingToBehavior: NSDecimalNumberHandler(roundingMode: NSDecimalNumber.RoundingMode.down, scale: 0, raiseOnExactness: true, raiseOnOverflow: true, raiseOnUnderflow: true, raiseOnDivideByZero: true)).int8Value } }
    
    /// RDExtensionsSwift: Convert Float to Int16
    var toInt16 : Int16 { get { return NSDecimalNumber(value: self).rounding(accordingToBehavior: NSDecimalNumberHandler(roundingMode: NSDecimalNumber.RoundingMode.down, scale: 0, raiseOnExactness: true, raiseOnOverflow: true, raiseOnUnderflow: true, raiseOnDivideByZero: true)).int16Value } }
    
    /// RDExtensionsSwift: Convert Float to Int32
    var toInt32 : Int32 { get { return NSDecimalNumber(value: self).rounding(accordingToBehavior: NSDecimalNumberHandler(roundingMode: NSDecimalNumber.RoundingMode.down, scale: 0, raiseOnExactness: true, raiseOnOverflow: true, raiseOnUnderflow: true, raiseOnDivideByZero: true)).int32Value } }
    
    /// RDExtensionsSwift: Convert Float to Int64
    var toInt64 : Int64 { get { return NSDecimalNumber(value: self).rounding(accordingToBehavior: NSDecimalNumberHandler(roundingMode: NSDecimalNumber.RoundingMode.down, scale: 0, raiseOnExactness: true, raiseOnOverflow: true, raiseOnUnderflow: true, raiseOnDivideByZero: true)).int64Value } }
    
    /// RDExtensionsSwift: Convert Float to CGFloat
    var toCGFloat : CGFloat { get { return CGFloat(self) } }
    
    /// RDExtensionsSwift: Convert Float to Double
    var toDouble : Double { get { return NSDecimalNumber(value: self).doubleValue } }
    
}
