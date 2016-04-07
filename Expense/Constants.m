//
//  Constants.m
//  Dcard
//
//  Created by willard on 2015/11/13.
//  Copyright © 2015年  willard. All rights reserved.
//

#import "Constants.h"

@implementation Constants

// static Constants *instance = nil;
static NSArray<NSString *> *kCategoryOutComeTypes;
static NSMutableArray *sCategoryTypes;
+ (Constants *)getInstance
{
    /*@synchronized(self) {
      if (!instance) {
        instance = [[Constants alloc] init];
        [instance initConstants];
      }
    }
    return instance;*/

    static Constants *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      instance = [[Constants alloc] init];
      [instance initConstants];
    });
    return instance;
}

- (void)initConstants
{
    _kCategoryOutcomeTypes =
        @[ @"Food", @"Clothing", @"Accommodation", @"Transportation", @"Education", @"Entertainment" ];

    _kCategoryIncomeTypes = @[ @"Salary", @"ExtraIncome" ];

    _kTransactionTypes = @[ @"income", @"outcome" ];

    _kDateTimeFormatPattern = @"yyyy-MM-dd HH:mm:ss";
    _kTransactionTypeIncome = @1;
    _kTransactionTypeOutcome = @2;
}

+ (void)initConstants_
{
    kCategoryOutComeTypes =
        @[ @"Food", @"Clothing", @"Accommodation", @"Transportation", @"Education", @"Entertainment" ];
    sCategoryTypes = [[NSMutableArray alloc] initWithCapacity:TransactionTypeCount];
    [sCategoryTypes
        insertObject:[NSArray<NSString *> arrayWithObjects:@"Food", @"Clothing", @"Accommodation", @"Transportation",
                                                           @"Education", @"Entertainment", nil]
             atIndex:0];
    [sCategoryTypes insertObject:[NSArray<NSString *> arrayWithObjects:@"Salary", @"ExtraIncome", nil] atIndex:1];
    /* sCategoryTypes[TransactionTypeIncome] =
         @[ @"Food", @"Clothing", @"Accommodation", @"Transportation", @"Education", @"Entertainment" ];
     sCategoryTypes[TransactionTypeOutcome] = @[ @"Salary", @"ExtraIncome" ];*/
    // NSLog(@"%d %d", [sCategoryTypes[1] count], [sCategoryTypes[2] count]);
}

+ (NSArray<NSString *> *)getCategoryType:(TransactionType)type
{
    return sCategoryTypes[type];
}
@end
