//
//  Constants.h
//  Dcard
//
//  Created by willard on 2015/11/13.
//  Copyright © 2015年  willard. All rights reserved.
//

#import <Foundation/Foundation.h>

//Diana love 菜
@interface Constants : NSObject

typedef NS_ENUM(NSInteger, CategoryIncomeType) {
  CategoryIncomeTypeNone = 0,
  CategoryIncomeTypeSalary,
  CategoryIncomeTypeCount
};

typedef NS_ENUM(NSInteger, CategoryOutcomeType) {
  CategoryOutcomeTypeNone = 0,
  CategoryOutcomeTypeFood,
  CategoryOutcomeTypeTransportation,
  CategoryOutcomeTypeMovie,
  CategoryOutcomeTypeBook,
  CategoryOutcomeTypeCount
};

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
- (NSString *)GetCategoryIncomeType:(NSNumber *)idx;

- (NSString *)GetCategoryOutcomeType:(NSNumber *)idx;
- (NSString *)GetTransactionType:(NSNumber *)idx;

@end
