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
    
    self.inputTextview.text = self.html;
    self.toggle.title = @"HTML";
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
        
        NSString *content = [NSString stringWithFormat:@"<HTML><HEAD>%@</HEAD>%@</HTML>", self.script, self.html];
        
        
        WebViewController *nextViewController = [segue destinationViewController];
        nextViewController.html = content;
    }
}

@end
