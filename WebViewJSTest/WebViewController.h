//
//  WebViewController.h
//  WebViewJSTest
//
//  Created by jyon on 13/07/01.
//  Copyright (c) 2013年 jyon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webview;

@property (strong, nonatomic) NSString *html;

@end
