//
//  SecondViewController.m
//  VCTransitions
//
//  Created by Dulio Denis on 10/18/14.
//  Copyright (c) 2014 ddApps. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Add a Tap Gesture to close View Controller
    UITapGestureRecognizer *tapToDismiss = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(close)];
    [self.view addGestureRecognizer:tapToDismiss];
}

- (void)close {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
