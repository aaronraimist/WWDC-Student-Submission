//
//  Age.m
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-06.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "Age.h"

#define BIRTHDAY_STRING @"2:13 AM - 11 - 05 - 1998" // I know I'm old. 

@implementation Age
@synthesize birthday;

/* Initialize Hidden Status Bar; */
- (BOOL)prefersStatusBarHidden { return YES; }


- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder: aDecoder]) {
        
        self.SlideID = [NSString stringWithFormat: @"%@", AGE]; // Tag
        self.isMasterSlide = NO;
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"HH:mm a - dd - MM - yyyy"];

        self.birthday = [dateFormatter dateFromString: BIRTHDAY_STRING]; // Birthday Tag
        
        [[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(refreshAge) userInfo:nil repeats: YES] fire];
    } return self;
}

- (void)refreshAge {
    
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [gregorianCalendar
                            components:NSSecondCalendarUnit |NSMinuteCalendarUnit | NSHourCalendarUnit | NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit
                            fromDate:birthday
                            toDate:[NSDate date]
                            options: 0];
    
    [self.years setText: [NSString stringWithFormat:@"I am %i years, ", [components year]]];
    [self.months setText: [NSString stringWithFormat: @" %i months", [components month]]];
    [self.days setText: [NSString stringWithFormat: @" %i days, ", [components day]]];
    [self.hours setText: [NSString stringWithFormat: @"%i hours", [components hour]]];
    [self.minutes setText: [NSString stringWithFormat: @"%i minutes, ", [components minute]]];
    [self.seconds setText: [NSString stringWithFormat: @"%i seconds", [components second]]];
}

@end
