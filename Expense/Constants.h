//
//  Constants.h
//  Dcard
//
//  Created by willard on 2015/11/13.
//  Copyright © 2015年  willard. All rights reserved.
//

#import <Foundation/Foundation.h>

// Diana love fegerg
@interface Constants : NSObject

typedef NS_ENUM(NSInteger, TransactionType) { TransactionTypeNone = 0, TransactionTypeIncome, TransactionTypeOutcome, TransactionTypeCount };
+ (void)initConstants;
+ (NSString *)getCategoryTypes;
+ (NSArray<NSString *> *)getCategoryTypes:(TransactionType)type;
@end
