//
//  Category.h
//  Expense
//
//  Created by Willard on 2016/4/4.
//  Copyright © 2016年  willard. All rights reserved.
//

#import <CoreData/CoreData.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Category : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
+ (void)createAndSaveEntity:(NSNumber *)categoryID
                       name:(NSString *)name
            transactionType:(TransactionType)transactionType
                      order:(NSNumber *)order;
@end

NS_ASSUME_NONNULL_END

#import "Category+CoreDataProperties.h"
