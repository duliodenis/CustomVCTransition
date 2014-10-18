//
//  ViewController.m
//  VCTransitions
//
//  Created by Dulio Denis on 10/17/14.
//  Copyright (c) 2014 ddApps. All rights reserved.
//

#import "ViewController.h"
#import "PresentTransition.h"
#import "DismissTransition.h"

@interface ViewController () <UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)presentNextVC:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *secondViewController = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];

    secondViewController.modalPresentationStyle = UIModalPresentationCustom;
    secondViewController.transitioningDelegate = self;
    
    [self presentViewController:secondViewController animated:YES completion:nil];
}


#pragma mark - Transition Delegate Required Method

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    return [[PresentTransition alloc] init];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    return [[DismissTransition alloc] init];
}

@end
