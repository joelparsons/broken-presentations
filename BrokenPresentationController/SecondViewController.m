//
//  SecondViewController.m
//  BrokenPresentationController
//
//  Created by Joel Parsons on 23/09/2014.
//  Copyright (c) 2014 play video. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
<UIViewControllerTransitioningDelegate>
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - target action

-(IBAction)unwindToSecondViewController:(UIStoryboardSegue *)sender{
    
}

@end
