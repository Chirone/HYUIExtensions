//
//  HYViewController.m
//  Demo
//
//  Created by Hayden Young on 15/05/14.
//  Copyright (c) 2014 Hayden Young. All rights reserved.
//
#import "HYUIExtensions.h"

#import "HYRootViewController.h"

@interface HYRootViewController ()

@end

@implementation HYRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	[self setupButtons];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UI Setup
- (void)setupButtons
{
	UIButton *buttonWithTitle = [UIButton hy_buttonWithTitle:@"Button with title" target:self action:@selector(buttonAction:)];
	[self.view addSubview:buttonWithTitle];
	
	[buttonWithTitle setFrameOrigin:CGPointMake(40, 50)];
}

#pragma mark - Button Actions
- (void)buttonAction:(id)sender
{
	
}
@end
