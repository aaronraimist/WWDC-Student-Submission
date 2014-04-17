//
//  CurrentProjects.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-08.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "CurrentProjectsView.h"

@implementation CurrentProjectsView

/* Initialize Hidden Status Bar; */
- (BOOL)prefersStatusBarHidden { return YES; }

- (id)initWithCoder:(NSCoder *)aDecoder // Decoder
{
    if (self = [super initWithCoder: aDecoder]) {
        
        self.SlideID = [NSString stringWithFormat: @"%@", CURRENT_PROJECTS]; // Tag
        self.isMasterSlide = YES;
    }
    
    return self;
}

- (IBAction)slate { // Current Project
    
    [self.delegate presentWeb: @"https://www.dropbox.com/sh/ysasxl2y1v1arsd/F7CWdohuS8#lh:null-sign-in.png"];
}

@end
