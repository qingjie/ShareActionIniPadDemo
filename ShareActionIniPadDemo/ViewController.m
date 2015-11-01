//
//  ViewController.m
//  ShareActionIniPadDemo
//
//  Created by qingjie on 10/31/15.
//  Copyright © 2015 Retrieve LLC. All rights reserved.
//


#import "ViewController.h"


@interface ViewController ()
@property (strong ,nonatomic) UIActivityViewController *controller;
@end

@implementation ViewController

UIPopoverPresentationController *pop = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIActivityViewController *)controller {
    if (_controller == nil) {
        NSArray *objectsToShare = @[@"123"];
        _controller = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:nil];
    }
    return _controller;
}


- (IBAction)btnTapped:(id)sender {
    pop = self.controller.popoverPresentationController;
    
    //pop = [[UIPopoverPresentationController alloc] initWithPresentedViewController:self.controller presentingViewController:self.controller];
    //[pop setPermittedArrowDirections:UIPopoverArrowDirectionLeft | UIPopoverArrowDirectionRight];
    
    pop.delegate = self;
    
    pop.sourceRect = CGRectMake(200.0, 100.0, 100.0, 100.0);
    pop.sourceView = self.view;
    
    [self presentViewController:self.controller animated:YES completion:nil];
    
    
    
}



@end
