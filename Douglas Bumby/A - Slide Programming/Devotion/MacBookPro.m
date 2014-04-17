//
//  iMac.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-07.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "MacBookPro.h"

@implementation MacBookPro

/* Initialize Hidden Status Bar; */
- (BOOL)prefersStatusBarHidden { return YES; }

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder: aDecoder]) {
        
        self.SlideID = [NSString stringWithFormat: @"%@", MACBOOK]; // Tag
        self.isMasterSlide = NO;
        }
    
    return self;
}

@end
