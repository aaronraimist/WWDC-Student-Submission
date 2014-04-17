//
//  iPhone2G.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-06.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "iPhone.h"

@implementation iPhone

/* Initialize Hidden Status Bar; */
- (BOOL)prefersStatusBarHidden { return YES; }

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder: aDecoder]) {
        
        self.SlideID = [NSString stringWithFormat: @"%@", IPHONE]; // Tag
        self.isMasterSlide = NO;
        
        }
    
    return self;
}

@end
