//
//  UnlockViewController.h
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-04.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SlideToUnlockDelegate <NSObject>

- (void)completed;

@end

@interface UnlockViewController : UIViewController
{
    UIImageView *slideToUnlock_Background;
    
	UISlider *slideToUnlock_Slider;
        
	NSTimer *animation_Timer;
    int animation_TimerCount;
    
	BOOL touchIsDown;
    
	CGFloat gradientLocations[3];
}

@property (nonatomic, retain) id <SlideToUnlockDelegate> delegate;

@property (nonatomic, retain) UILabel *slideToUnlock_Label;

- (id)initWithDelegate: (id<SlideToUnlockDelegate>)delegate;

@end
