//
//  PresentTransition.m
//  VCTransitions
//
//  Created by Dulio Denis on 10/17/14.
//  Copyright (c) 2014 ddApps. All rights reserved.
//

#import "PresentTransition.h"

@implementation PresentTransition

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *secondViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *containerView = [transitionContext containerView];
    
    // Start totally transparent
    secondViewController.view.alpha = 0.0;
    secondViewController.view.frame = containerView.bounds;
    
    [containerView addSubview:secondViewController.view];
    
    [UIView animateWithDuration:0.5 animations:^{
        // Fade In Animation
        secondViewController.view.alpha = 1.0;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}

@end
