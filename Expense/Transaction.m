//
//  Transaction.m
//  Expense
//
//  Created by Willard on 2016/4/4.
//  Copyright © 2016年  willard. All rights reserved.
//

#import "Transaction.h"

@implementation Transaction

// Insert code here to add functionality to your managed object subclass
+ (void)createAndSaveTransaction:(NSNumber *)subCategory
                     userAccount:(NSString *)userAccount
                            cost:(NSNumber *)cost
                            note:(NSString *)note
                            type:(NSNumber *)type
                       createdAt:(NSDate *)createdAt
                       updatedAt:(NSDate *)updatedAt
                      hasUpdated:(NSNumber *)hasUpdated
                      hasDeleted:(NSNumber *)hasDeleted {

  Transaction *transction = [Transaction MR_createEntity];
  transction.subCategory = subCategory;
  transction.userAccount = userAccount;
  transction.cost = cost;
  transction.note = note;
  transction.type = type;
  transction.createdAt = createdAt;
  transction.updatedAt = updatedAt;
  transction.hasUpdated = hasUpdated;
  transction.hasDeleted = hasDeleted;
  [transction.managedObjectContext MR_saveToPersistentStoreAndWait];
}

@end
