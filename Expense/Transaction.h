//
//  Transaction.h
//  Expense
//
//  Created by Willard on 2016/4/4.
//  Copyright © 2016年  willard. All rights reserved.
//

#import <CoreData/CoreData.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Transaction : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
+ (void)createAndSaveTransaction:(NSNumber *)subCategory
                     userAccount:(NSString *)userAccount
                            cost:(NSNumber *)cost
                            note:(NSString *)note
                            type:(NSNumber *)type
                       createdAt:(NSDate *)createdAt
                       updatedAt:(NSDate *)updatedAt
                      hasUpdated:(NSNumber *)hasUpdated
                      hasDeleted:(NSNumber *)hasDeleted;
@end

NS_ASSUME_NONNULL_END

#import "Transaction+CoreDataProperties.h"
