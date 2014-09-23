//
//  FancyPresentationController.m
//  BrokenPresentationController
//
//  Created by Joel Parsons on 23/09/2014.
//  Copyright (c) 2014 play video. All rights reserved.
//

#import "FancyPresentationController.h"

@interface FancyPresentationController ()
@property (nonatomic, strong) UIView * customContainerView;
@end

@implementation FancyPresentationController

-(UIModalPresentationStyle)presentationStyle{
    return UIModalPresentationCurrentContext;
}

-(BOOL)shouldPresentInFullscreen{
    return NO;
}

-(BOOL)shouldRemovePresentersView{
    return NO;
}

-(CGRect)frameOfPresentedViewInContainerView{
    CGRect topRect = CGRectZero;
    CGRect bottomRect = CGRectZero;
    CGRectDivide(self.containerView.frame, &topRect, &bottomRect, 200.0, CGRectMinYEdge);
    return bottomRect;
}

-(CGSize)sizeForChildContentContainer:(id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize{
    CGSize halfHeight = parentSize;
    halfHeight.height = parentSize.height / 2.0;
    return halfHeight;
}


@end
