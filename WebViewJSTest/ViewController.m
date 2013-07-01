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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapTestBtn:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *nvc = [storyboard instantiateViewControllerWithIdentifier:@"webView"];
    [self.navigationController pushViewController:nvc animated:YES];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [[segue identifier] isEqualToString:@"nextSegue"] ) {
        WebViewController *nextViewController = [segue destinationViewController];
        
        nextViewController.html = self.tvInputHTML.text;
    }
}

@end
