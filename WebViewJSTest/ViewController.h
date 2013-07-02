//
//  ViewController.h
//  WebViewJSTest
//
//  Created by jyon on 13/07/01.
//  Copyright (c) 2013年 jyon. All rights reserved.
//

#define UD_STORE_HTML @"UD_STORE_HTML"
#define UD_STORE_SCRIPT @"UD_STORE_SCRIPT"

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *inputTextview;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *toggle;

@property (strong, nonatomic) NSString *html;
@property (strong, nonatomic) NSString *script;

@end
