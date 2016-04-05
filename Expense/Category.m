//
//  Category.m
//  Expense
//
//  Created by Willard on 2016/4/4.
//  Copyright © 2016年  willard. All rights reserved.
//

#import "Category.h"

@implementation Category

+ (void)createAndSaveEntity:(NSNumber *)categoryID
                       name:(NSString *)name
                       type:(NSNumber *)type
                      order:(NSNumber *)order {
  Category *category = [Category MR_createEntity];
  category.categoryID = categoryID;
  category.name = name;
  category.type = type;
  category.order = order;
  [category.managedObjectContext MR_saveToPersistentStoreAndWait];
}

// Insert code here to add functionality to your managed object subclass

@end
