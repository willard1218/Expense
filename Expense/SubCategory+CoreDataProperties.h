//
//  SubCategory+CoreDataProperties.h
//  Expense
//
//  Created by Willard on 2016/4/5.
//  Copyright © 2016年  willard. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "SubCategory.h"

NS_ASSUME_NONNULL_BEGIN

@interface SubCategory (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *categoryID;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *order;
@property (nullable, nonatomic, retain) NSNumber *subCategory;

@end

NS_ASSUME_NONNULL_END
