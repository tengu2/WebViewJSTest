//
//  ViewController.m
//  WebViewJSTest
//
//  Created by jyon on 13/07/01.
//  Copyright (c) 2013年 jyon. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.script = @"<SCRIPT>\n\n</SCRIPT>";
    self.html = @"<BODY>\n\n</BODY>";
    


    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSString *ud_html = [ud objectForKey:UD_STORE_HTML];
    NSString *ud_script = [ud objectForKey:UD_STORE_SCRIPT];
    
    if(ud_html != nil) self.html = ud_html;
    if(ud_script != nil) self.script = ud_script;
    
    //set layout
    self.toggle.title = @"HTML";
    self.inputTextview.text = self.html;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapToggle:(id)sender {
    
    if([self.toggle.title isEqualToString:@"HTML"]){
        self.toggle.title = @"Script";
        self.html = self.inputTextview.text;
        self.inputTextview.text = self.script;
    }else{
        self.toggle.title = @"HTML";
        self.script = self.inputTextview.text;
        self.inputTextview.text = self.html;
    }
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ( [[segue identifier] isEqualToString:@"nextSegue"] ) {
    
        if([self.toggle.title isEqualToString:@"HTML"]){
            self.html = self.inputTextview.text;
        }else{
            self.script = self.inputTextview.text;
        }

        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        [ud setObject:self.html forKey:UD_STORE_HTML];
        [ud setObject:self.script forKey:UD_STORE_SCRIPT];
        [ud synchronize];
        
        NSString *content = [NSString stringWithFormat:@"<HTML><HEAD>%@</HEAD>%@</HTML>", self.script, self.html];
        
        WebViewController *nextViewController = [segue destinationViewController];
        nextViewController.html = content;
    }
}

@end
