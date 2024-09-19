//
//  main.swift
//  RSANumber
//
//  Created by Evelyn Chen on 2024-09-19.
//

import Foundation

func isDivisor(dividend: Int, divisor: Int) -> Bool {
    // Add logic to determine whether provided divisor actually
    // goes evenly into the provided dividend
    // (e.g.: remainder is zero)
    if dividend % divisor == 0 {
        return true
    } else {
        return false
    }
    // Return the result...
}


func isRSA(number: Int) -> Bool {
    
    var count = 2
    
    if number <= 3 {
        return false
    }
    
    // Loop over possible divisors
    for j in 2...number/2 {
        // Check whether current number is a divisor of this number
        let result = isDivisor(dividend: number, divisor: j)
        // Do something based on result...
        if result == true {
            count += 1
        } else {
            count+=0
        }
    }
    // Return whether this number is an RSA number...
    
    if count == 4 {
        return true
    } else {
        return false
    }
}



func findCountOfRSANumbers(between lower: Int, and upper: Int) -> Int {
    
    var countedRSA = 0
    // Loop over numbers in range
    for i in lower...upper {
        // Check whether current number is an RSA number
        let result = isRSA(number: i)
        // Do something based on result...
        if result == true {
            countedRSA += 1
        } else {
            countedRSA += 0
        }
    }
    // Return count of RSA numbers in the range given...
    
    print("The amount of RSA numbers for the numbers between \(lower) and \(upper) is \(countedRSA)")
    
    return countedRSA
}



print(findCountOfRSANumbers(between: 1, and: 3))
print(findCountOfRSANumbers(between: 1, and: 1000))





