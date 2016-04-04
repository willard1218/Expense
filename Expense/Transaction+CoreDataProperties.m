//
//  Transaction+CoreDataProperties.m
//  Expense
//
//  Created by Willard on 2016/4/4.
//  Copyright © 2016年  willard. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Transaction+CoreDataProperties.h"

@implementation Transaction (CoreDataProperties)

@dynamic subCategory;
@dynamic cost;
@dynamic createdAt;
@dynamic name;
@dynamic note;
@dynamic type;
@dynamic hasDeleted;
@dynamic updatedAt;

@end
