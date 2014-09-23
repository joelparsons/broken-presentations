//
//  FirstViewController.m
//  BrokenPresentationController
//
//  Created by Joel Parsons on 23/09/2014.
//  Copyright (c) 2014 play video. All rights reserved.
//

#import "FirstViewController.h"
#import "FancyPresentationController.h"


@interface FirstViewController ()
<UIViewControllerTransitioningDelegate>
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UIViewController * destination = segue.destinationViewController;
    destination.transitioningDelegate = self;
    destination.modalPresentationStyle = UIModalPresentationCustom;
}

#pragma mark - UIViewControllerTransitioningDelegate

-(UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source{
    return [[FancyPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}


#pragma mark - target action

-(IBAction)unwindToFirstViewController:(UIStoryboardSegue *)sender{
    
}

@end
