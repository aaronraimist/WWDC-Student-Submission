//
//  WorldWideDevConfWhy.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-09.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "WhyWWDCView.h"

@implementation WhyWWDCView

/* Initialize Hidden Status Bar; */
- (BOOL)prefersStatusBarHidden { return YES; }

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder: aDecoder]) {
        
        self.SlideID = [NSString stringWithFormat: @"%@", WHY_WWDC]; // Tag
        self.isMasterSlide = NO;
        
    } return self;
}

@end
