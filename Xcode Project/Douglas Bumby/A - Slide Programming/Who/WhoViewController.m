//
//  WhoViewController.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-05.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "WhoViewController.h"

@implementation WhoViewController

/* Initialize Hidden Status Bar; */
- (BOOL)prefersStatusBarHidden { return YES; }


- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder: aDecoder]) {
        
        self.SlideID = [NSString stringWithFormat: @"%@", WHO]; // Tag
        self.isMasterSlide = YES;
    }
    
    return self;
}

@end
