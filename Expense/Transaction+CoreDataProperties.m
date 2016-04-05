//
//  Transaction+CoreDataProperties.m
//  Expense
//
//  Created by Garrick on 2016/4/5.
//  Copyright © 2016年  willard. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Transaction+CoreDataProperties.h"

@implementation Transaction (CoreDataProperties)

@dynamic cost;
@dynamic createdAt;
@dynamic hasDeleted;
@dynamic userAccount;
@dynamic note;
@dynamic subCategory;
@dynamic type;
@dynamic updatedAt;
@dynamic hasUpdated;

@end
