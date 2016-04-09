//
//  Constants.m
//  Dcard
//
//  Created by willard on 2015/11/13.
//  Copyright © 2015年  willard. All rights reserved.
//

#import "Constants.h"

@implementation Constants

static NSMutableArray *sCategoryTypes;
static NSString *sDateTimeFormatPattern;

+ (void)initConstants
{
    sDateTimeFormatPattern = @"yyyy-MM-dd HH:mm:ss";

    sCategoryTypes = [[NSMutableArray alloc] initWithCapacity:TransactionTypeCount];
    sCategoryTypes[TransactionTypeNone] = [NSNull null];
    sCategoryTypes[TransactionTypeIncome] =
        @[ @"Food", @"Clothing", @"Accommodation", @"Transportation", @"Education", @"Entertainment" ];
    sCategoryTypes[TransactionTypeOutcome] = @[ @"Salary", @"ExtraIncome" ];
}

+ (NSArray<NSString *> *)getCategoryTypes:(TransactionType)type
{
    return sCategoryTypes[type];
}

+ (NSString *)getCategoryTypes
{
    return sDateTimeFormatPattern;
}
@end
