//
//  Transaction+CoreDataProperties.h
//  Expense
//
//  Created by Willard on 2016/4/4.
//  Copyright © 2016年  willard. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Transaction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Transaction (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *category;
@property (nullable, nonatomic, retain) NSNumber *cost;
@property (nullable, nonatomic, retain) NSDate *createdAt;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *note;
@property (nullable, nonatomic, retain) NSNumber *type;
@property (nullable, nonatomic, retain) NSString *userAccount;
@property (nullable, nonatomic, retain) NSDate *updatedAt;

@end

NS_ASSUME_NONNULL_END
