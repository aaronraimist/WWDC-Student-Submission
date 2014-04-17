//
//  ViewController.h
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-03.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Slide.h"

@interface SlideViewController : UIViewController <SlideDelegate, UIScrollViewDelegate>
{
    NSMutableArray *slides;
}

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, retain) Slide *slide;
@property (nonatomic) int slideCount;

@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@end
