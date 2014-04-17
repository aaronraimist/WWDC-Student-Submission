//
//  Slide.h
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-04.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>

#import "AppDelegate.h"

@protocol SlideDelegate <NSObject>

- (void)presentWeb: (NSString *)link;

@end

@interface Slide : UIView

@property (nonatomic, retain) NSString *SlideID;
@property (nonatomic) BOOL isMasterSlide;

@property (nonatomic, retain) id<SlideDelegate> delegate;

@end
