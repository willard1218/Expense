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
  });
  return instance;
}

- (void)initConstants {
  _kCategoryOutcomeTypes = @[
    @"Food",
    @"Clothing",
    @"Accommodation",
    @"Transportation",
    @"Education",
    @"Entertainment"
  ];

  _kCategoryIncomeTypes = @[ @"Salary", @"ExtraIncome" ];

  _kTransactionTypes = @[ @"income", @"outcome" ];

  _kDateTimeFormatPattern = @"yyyy-MM-dd HH:mm:ss";
  _kTransactionTypeIncome = @1;
  _kTransactionTypeOutcome = @2;
}
@end
