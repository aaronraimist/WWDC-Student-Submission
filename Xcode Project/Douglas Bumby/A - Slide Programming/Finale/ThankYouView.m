//
//  SteveJobs-ThinkDifferent.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-10.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "ThankYouView.h"

@implementation ThankYouView

/* Initialize Hidden Status Bar; */
- (BOOL)prefersStatusBarHidden { return YES; }

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder: aDecoder]) {
        
        self.SlideID = [NSString stringWithFormat: @"%@", THANK_YOU]; // Tag
        self.isMasterSlide = YES;
        
    } return self;
}

- (IBAction)messageToTheJudges {
    
    [self.delegate presentWeb: @"http://youtu.be/xsemvjALal8"]; // Link To Final Video. 
}

@end
