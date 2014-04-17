//
//  AppDelegate.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-03.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "AppDelegate.h"
#import "SlideViewController.h"

@implementation AppDelegate
@synthesize window, viewController, navigationController, slideIDs;

- (void)addSlideIDs {
    
    self.slideIDs = [[NSMutableArray alloc] init];
    
    // Declaring Slides
    [slideIDs addObject: INTRODUCTION]; // Finished
    [slideIDs addObject: WHO];
    [slideIDs addObject: AGE]; /* Work on Stability */
    [slideIDs addObject: DEVOTION];
    [slideIDs addObject: IPHONE];
    [slideIDs addObject: MACBOOK];
    [slideIDs addObject: LEARNING];
    [slideIDs addObject: CURRENT_PROJECTS];
    [slideIDs addObject: EXPERIMENTS];
    [slideIDs addObject: WHY_WWDC];
    // [slideIDs addObject: ANYTHING_FOR_WWDC];
    [slideIDs addObject: THANK_YOU]; // Record the Video to Judges
    
    if (!IS_IPHONE_5) { // 3.5 inch iPhone
        
        NSMutableArray *newSlideIDs = [[NSMutableArray alloc] init];
        
        for (int i = 0; i <= slideIDs.count - 1; i++) {
            
            [newSlideIDs addObject: [slideIDs[i] stringByAppendingString:@"_4S"]];
        }
             
        slideIDs = newSlideIDs;
    }
    
}

#pragma mark SlideToUnlock Delegate

- (void)completed {
    
    SlideViewController *douglasViewController = [[SlideViewController alloc] init];

    if (!IS_IPHONE_5) { // _4S
        
        douglasViewController = [[SlideViewController alloc] initWithNibName:@"SlideViewController_4S" bundle: nil];
    }
    
    [self.navigationController pushViewController:douglasViewController animated: YES];
}

#pragma mark States

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self addSlideIDs]; // Slide ID Delegation
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // UnlockViewController.h is the root/launch file.
    self.viewController = [[UnlockViewController alloc] initWithDelegate: self];
    
    if (!IS_IPHONE_5) { // 3.5 inch iPhone
        
        self.viewController = [[UnlockViewController alloc] initWithNibName:@"UnlockViewController_4S" bundle: nil];
        
        self.viewController.delegate = self;
    }
    
    self.navigationController = [[UINavigationController alloc] init];
    [navigationController setNavigationBarHidden: YES]; // Hide Navigation Bar

    navigationController.viewControllers = @[self.viewController];

    self.window.rootViewController = navigationController; // RootViewController
    [self.window makeKeyAndVisible];
    
    return YES;
}

// Start of UIApplication Void Delegations.
- (void)applicationWillResignActive:(UIApplication *)application { /* Add Code Here */ }
- (void)applicationDidEnterBackground:(UIApplication *)application { /* Add Code Here */ }
- (void)applicationWillEnterForeground:(UIApplication *)application { /* Add Code Here */ }
- (void)applicationDidBecomeActive:(UIApplication *)application { /* Add Code Here */ }
- (void)applicationWillTerminate:(UIApplication *)application { /* Add Code Here */ }
// End of UIApplication Void Delegations.

@end
