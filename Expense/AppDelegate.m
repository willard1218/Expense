//
//  AppDelegate.m
//  Expense
//
//  Created by Willard on 2016/2/6.
//  Copyright © 2016年  willard. All rights reserved.
//

#import "AppDelegate.h"
#import "Category.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)setupDefalutCategory:(TransactionType)transaction_type {
  Constants *constants = [Constants getInstance];
  NSArray *categoryList = transaction_type == TransactionTypeIncome
                              ? constants.kCategoryOutcomeTypes
                              : constants.kCategoryIncomeTypes;

  NSPredicate *categorysPredicate =
      [NSPredicate predicateWithFormat:@"categoryID < %d and type = %d",
                                       [categoryList count], transaction_type];

  NSArray *categorys = [Category MR_findAllWithPredicate:categorysPredicate];

  if ([categorys count] == 0) {
    [categoryList
        enumerateObjectsUsingBlock:^(NSString *categoryName, NSUInteger i,
                                     BOOL *_Nonnull stop) {
          [Category createAndSaveEntity:@(i)
                                   name:categoryName
                                   type:@(transaction_type)
                                  order:@(i)];
        }];
    /*for (int i = 0; i < [defalutTypes count]; i++) {
      [Category createAndSaveEntity:@(i)
                               name:defalutTypes[i]
                               type:@(TransactionTypeOutcome)
                              order:@(i)];
    } // test 12ff eeg*/
  }
}

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [MagicalRecord
      setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"Expense.sqlite"];
  [MagicalRecord setLoggingLevel:MagicalRecordLoggingLevelError];

  [self setupDefalutCategory:0];
  [self setupDefalutCategory:1];

  // Override point for customization after application launch.
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state.
  // This can occur for certain types of temporary interruptions (such as an
  // incoming phone call or SMS message) or when the user quits the application
  // and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down
  // OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate
  // timers, and store enough application state information to restore your
  // application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called
  // instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the inactive state;
  // here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the
  // application was inactive. If the application was previously in the
  // background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if
  // appropriate. See also applicationDidEnterBackground:.
  // Saves changes in the application's managed object context before the
  // application terminates.
}
@end
