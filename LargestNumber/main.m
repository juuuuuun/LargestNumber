//
//  main.m
//  LargestNumber
//
//  Created by Jun Oh on 2018-12-28.
//  Copyright © 2018 Jun Oh. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSNumber* largestNumber(NSArray *numbers) {
    // Initialize the largest number to be the first element of the array
    NSNumber* largest = numbers[0];
    
    // Loop through all the elements of the array
    for(NSNumber* number in numbers) {
        // If the largest is smaller than the number being iterated over, replace the largest with the current number
        if( [largest doubleValue] < [number doubleValue]) {
            largest = number;
        }
    }
    return largest;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Sample arrays
        NSArray* sampleNumbers = @[@2, @"eight", @"4", @7, @5, @6];
        NSArray* sampleArray1 = @[@3, @7, @6, @8];
        NSArray* sampleArray2 = @[@44, @5, @6];
        
        NSLog(@"%@", largestNumber(sampleNumbers));
        NSLog(@"%@", largestNumber(sampleArray1));
        NSLog(@"%@", largestNumber(sampleArray2));
    }
    return 0;
}
