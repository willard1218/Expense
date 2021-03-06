//
//  ViewController.m
//  Expense
//
//  Created by Willard on 2016/2/6.
//  Copyright © 2016年  willard. All rights reserved.
//

#import "Transaction.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [Transaction createAndSaveTransaction:@4
                              userAccount:@"fan"
                                     cost:@344
                                     note:@"好吃"
                                createdAt:[[NSDate alloc] init]
                                updatedAt:[[NSDate alloc] init]
                               hasUpdated:@NO
                               hasDeleted:@YES];

    Transaction *transaction = [Transaction MR_createEntity];
    // transaction.name = @"看電影";
    transaction.cost = @300;
    transaction.note = @"威秀";
    transaction.subCategory = @1;

    //  transaction.type = [[NSNumber alloc] 222
    // initWithInteger:TransactionTypeOutcome]; lastest2

    NSDate *currentDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];

    NSString *dateString = @"2017-08-22 14:49:23";
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [formatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];

    NSDate *date = [formatter dateFromString:dateString];

    transaction.createdAt = date;
    // NSDictionary *dict = [transaction DictionaryValue];
    // NSLog(@"%@", [dict JsonString]);

    [transaction save];

    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait]; // commit

    NSArray *a = [Transaction MR_findAllSortedBy:@"createdAt" ascending:YES];

    [a enumerateObjectsUsingBlock:^(Transaction *obj, NSUInteger idx, BOOL *_Nonnull stop){
        // NSLog(@"%@", [[obj DictionaryValue] JsonString]);

        //[obj MR_deleteEntity];
    }];

    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
