//
//  NSDictionary+JsonString.m
//  Expense
//
//  Created by Willard on 2016/2/12.
//  Copyright © 2016年  willard. All rights reserved.
//

#import "NSDictionary+Json.h"

@implementation NSDictionary (Json)
- (NSString *)JsonString
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:(NSJSONWritingOptions)NSJSONWritingPrettyPrinted
                                                         error:&error];

    if (!jsonData) {
        NSLog(@"❌ json parse error %@", error.localizedDescription);
        exit(EXIT_FAILURE);
    }
    else {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}
@end
