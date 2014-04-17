//
//  IntroductionViewController.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-05.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "IntroductionViewController.h"

@implementation IntroductionViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{    
    if (self = [super initWithCoder: aDecoder]) {
        
        self.SlideID = [NSString stringWithFormat: @"%@", INTRODUCTION]; // Tag
        self.isMasterSlide = YES;
    }
    
    return self;
}

/* Initialize Hidden Status Bar; */
- (BOOL)prefersStatusBarHidden {
    return YES; }
@end
