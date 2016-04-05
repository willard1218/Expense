//
//  main.m
//  Expense
//
//  Created by Willard on 2016/2/6.
//  Copyright © 2016年  willard. All rights reserved.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
  //  @autoreleasepool {
  //      return UIApplicationMain(argc, argv, nil,
  //      NSStringFromClass([AppDelegate class]));
  //  }
  @autoreleasepool {
    int retVal;
    @try { 
      retVal = UIApplicationMain(argc, argv, nil,
                                 NSStringFromClass([AppDelegate class])); 
    } @catch (NSException *exception) {
      NSLog(@"%@", [exception callStackSymbols]); //< ★1
      @throw exception;                           //< ★2
    }

    return retVal;
  }
}
