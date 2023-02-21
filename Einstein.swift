//
// This program calculates the amount of energy,
// produced with given mass.
//
//  Created by Melody Berhane
//  Created on 2023-02-20
//  Version 1.0
//  Copyright (c) 2023 Melody. All rights reserved.
import Foundation

// Declare constant 
let speedOfLight = 2.998 * pow(10.0, 8.0)

// Receive user input
print("Please enter the mass of the object (kg): ")
if let massDouble = Double(readLine()!) {
    // Check user input and do the following.
    if massDouble >= 0 {
        // Calculates the amount of energy with given mass.
        let energy = massDouble * pow(speedOfLight, 2.0)
        
        // Display results to user
        print("The mass of", massDouble, "kg", terminator: "")
        let roundAns = String(format: "%.3e", energy)
        print(" would produce", roundAns, "of energy in J.")

    } else {
        // executes whenever negative number input. 
        print("Please enter a positive number.")
    }
} else {
    // Displays error to the user
    print("Please enter valid input.")
}