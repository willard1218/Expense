//
//  Transaction+CoreDataProperties.h
//  Expense
//
//  Created by Garrick on 2016/4/5.
//  Copyright © 2016年  willard. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Transaction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Transaction (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *cost;
@property (nullable, nonatomic, retain) NSDate *createdAt;
@property (nullable, nonatomic, retain) NSNumber *hasDeleted;
@property (nullable, nonatomic, retain) NSNumber *hasUpdated;
@property (nullable, nonatomic, retain) NSString *note;
@property (nullable, nonatomic, retain) NSNumber *subCategory;
@property (nullable, nonatomic, retain) NSDate *updatedAt;
@property (nullable, nonatomic, retain) NSString *userAccount;

@end

NS_ASSUME_NONNULL_END
