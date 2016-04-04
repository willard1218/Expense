//
//  Constants.m
//  Dcard
//
//  Created by willard on 2015/11/13.
//  Copyright © 2015年  willard. All rights reserved.
//

#import "Constants.h"

@implementation Constants

static Constants *instance = nil;

+ (Constants *)getInstance {
  @synchronized(self) {
    if (!instance) {
      instance = [[Constants alloc] init];
      [instance initConstants];
    }
  }

  return instance;

  static Constants *instance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[Constants alloc] init];
  });
  return instance;
}

- (NSString *)GetCategoryIncomeType:(NSNumber *)idx {
  @try {
    return [_kCategoryIncomeTypes objectAtIndex:[idx intValue] - 1];
  } @catch (NSException *e) {
    NSLog(@"access _kCategoryIncomeTypes out of range");
    exit(EXIT_FAILURE);
  }
}

- (NSString *)GetCategoryOutcomeType:(NSNumber *)idx {
  @try {
    return [_kCategoryOutcomeTypes objectAtIndex:[idx intValue] - 1];
  } @catch (NSException *e) {
    NSLog(@"access _kCategoryOutcomeTypes out of range");
    exit(EXIT_FAILURE);
  }
}
- (NSString *)GetTransactionType:(NSNumber *)idx {
  @try {
    return [_kTransactionTypes objectAtIndex:[idx intValue] - 1];
  } @catch (NSException *e) {
    NSLog(@"access _kTransactionTypes out of range");
    exit(EXIT_FAILURE);
  }
}

- (void)initConstants {
  _kCategoryOutcomeTypes = @[
    @"Food",
    @"Oil",
    @"Transportation",
    @"Parents",
    @"Phone",
    @"Movie",
    @"Book",
    @"DailyCommodities"
  ];

  _kCategoryIncomeTypes = @[ @"salary" ];

  _kTransactionTypes = @[ @"income", @"outcome" ];
  @try {
    Boolean countMatched =
        [_kCategoryIncomeTypes count] == CategoryIncomeTypeCount - 1 &&
        [_kCategoryOutcomeTypes count] == CategoryOutcomeTypeCount - 1 &&
        [_kTransactionTypes count] == TransactionTypeCount - 1;

    if (!countMatched) {

      NSException *exception =
          [NSException exceptionWithName:@"NSException"
                                  reason:@"enum count doen't match array count"
                                userInfo:nil];

      @throw exception;
    }
  } @catch (NSException *exception) {
    NSLog(@"❌ %@", exception.reason);
    exit(EXIT_FAILURE);
  }

  _kDateTimeFormatPattern = @"yyyy-MM-dd HH:mm:ss";
  _kTransactionTypeIncome = [[NSNumber alloc] initWithInt:1];
  _kTransactionTypeOutcome = [[NSNumber alloc] initWithInt:2];
}
@end
