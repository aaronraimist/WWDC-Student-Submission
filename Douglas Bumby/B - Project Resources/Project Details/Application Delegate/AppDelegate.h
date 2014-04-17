//
//  AppDelegate.h
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-03.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UnlockViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, SlideToUnlockDelegate>

@property (nonatomic, retain) NSMutableArray *slideIDs;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UnlockViewController *viewController;

@property (strong, nonatomic) UINavigationController *navigationController;

@end
