//
//  QYViewController.m
//  CharExample
//
//  Created by jiwei on 14-9-10.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "QYViewController.h"
#import "CharView.h"
#import "QYAppDelegate.h"

const float page_h = 792.0;
const float page_w = 612.0;

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CharView *view = [[CharView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    [self.view addSubview:view];
    [self creatPDF];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)creatPDF{
    NSString *path = [[NSString alloc] initWithFormat:@"%@/%@",[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject], @"file.pdf"];
    CGRect r = CGRectMake(0, 0, page_w, page_h);
    UIGraphicsBeginPDFContextToFile(path, r, nil);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIGraphicsBeginPDFPage();
    
    NSString *appName = @"Bills Monitor";
    const float up = 20.0;
    float b_size = 20.0;
    
    CGPoint p = CGPointMake(30.0, up);
    CGSize s1 = [appName drawAtPoint:p withFont:[UIFont boldSystemFontOfSize:b_size]];

    

    
    UIGraphicsEndPDFContext();
}

@end
