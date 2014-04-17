//
//  Slide.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-04.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "Slide.h"

@implementation Slide
@synthesize SlideID, isMasterSlide;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
