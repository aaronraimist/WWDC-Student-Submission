//
//  WebViewController.h
//  Douglas Bumby
//
//  Created by Douglas Bumby on 2014-04-04.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate> {
    
    UIActivityIndicatorView *act;
    
    NSString *link;
}

@property (strong, nonatomic) IBOutlet UIWebView *webView;

- (id)initWithLink: (NSString *)link;

- (IBAction)back;

@end
