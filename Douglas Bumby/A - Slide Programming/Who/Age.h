//
//  Age.h
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-06.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import "Slide.h"

@interface Age : Slide

@property (nonatomic, retain) NSDate *birthday;

@property (weak, nonatomic) IBOutlet UILabel *years;
@property (weak, nonatomic) IBOutlet UILabel *months;
@property (weak, nonatomic) IBOutlet UILabel *days;
@property (weak, nonatomic) IBOutlet UILabel *hours;
@property (weak, nonatomic) IBOutlet UILabel *minutes;
@property (weak, nonatomic) IBOutlet UILabel *seconds;

@end


// I hope you enjoy this slide :)