//
//  main.m
//  LargestNumber
//
//  Created by Jun Oh on 2018-12-28.
//  Copyright © 2018 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Sample array
        NSArray* numbers = @[@2, @3, @7, @5, @6];
        
        // Initialize the largest number to be the first element of the array
        NSNumber* largest = numbers[0];
        
        // Loop through all the elements of the array
        for(NSNumber* number in numbers) {
            // If the largest is smaller than the number being iterated over, replace the largest with the current number
            if( [largest doubleValue] < [number doubleValue]) {
                largest = number;
            }
            NSLog(@"%@", number);
        }
        NSLog(@"%@", largest);
    }
    return 0;
}
