//
//  Constants.h
//  Dcard
//
//  Created by willard on 2015/11/13.
//  Copyright © 2015年  willard. All rights reserved.
//

#import <Foundation/Foundation.h>

//Diana love fegerg
@interface Constants : NSObject


typedef NS_ENUM(NSInteger, TransactionType) {
  TransactionTypeNone = 0,
  TransactionTypeIncome,
  TransactionTypeOutcome,
  TransactionTypeCount
};

@property(readonly, nonatomic) NSArray<NSString *> *kCategoryOutcomeTypes;
@property(readonly, nonatomic) NSArray<NSString *> *kCategoryIncomeTypes;
@property(readonly, nonatomic) NSArray<NSString *> *kTransactionTypes;

@property(readonly, nonatomic) NSNumber *kTransactionTypeIncome;
@property(readonly, nonatomic) NSNumber *kTransactionTypeOutcome;
@property(readonly, nonatomic) NSString *kDateTimeFormatPattern;

- (void)initConstants;
+ (Constants *)getInstance;


@end
