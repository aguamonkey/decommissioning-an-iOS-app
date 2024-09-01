//
//  ApiManager.m
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 01/09/2024.
//

#import "ApiManager.h"
#import <objc/runtime.h>

@implementation ApiManager

+ (void)load {
    Method originalMethod = class_getInstanceMethod(self, @selector(fetchDataFromAPI));
    Method swizzledMethod = class_getInstanceMethod(self, @selector(decommissioned_fetchDataFromAPI));
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

- (void)fetchDataFromAPI {
    // Original implementation (this will be swizzled)
    NSLog(@"Fetching data from the API...");
    [NSThread sleepForTimeInterval:2.0];
    NSLog(@"Data fetched successfully.");
}

- (void)decommissioned_fetchDataFromAPI {
    // New implementation for decommissioned method
    NSLog(@"This API call has been deprecated and will no longer function.");
    // Optionally, you can call the original method by:
    // [self decommissioned_fetchDataFromAPI];
}

@end
