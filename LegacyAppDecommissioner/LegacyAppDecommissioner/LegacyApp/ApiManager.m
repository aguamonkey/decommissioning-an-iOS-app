//
//  ApiManager.m
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 01/09/2024.
//

#import <Foundation/Foundation.h>

#import "ApiManager.h"

@implementation ApiManager

- (void)fetchDataFromAPI {
    NSLog(@"Fetching data from the API...");
    // Simulate a delay and then log the completion
    [NSThread sleepForTimeInterval:2.0];
    NSLog(@"Data fetched successfully.");
}

@end
