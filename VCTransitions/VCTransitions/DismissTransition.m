//
//  DismissTransition.m
//  VCTransitions
//
//  Created by Dulio Denis on 10/18/14.
//  Copyright (c) 2014 ddApps. All rights reserved.
//

#import "DismissTransition.h"

@implementation DismissTransition

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *secondViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    [UIView animateWithDuration:0.5 animations:^{
        // Fade Out Animation
        secondViewController.view.alpha = 0.0;
    } completion:^(BOOL finished) {
        [secondViewController.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}

@end
