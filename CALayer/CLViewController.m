//
//  CLViewController.m
//  CALayer
//
//  Created by Edward Loveall on 12/20/12.
//  Copyright (c) 2012 Edward Loveall. All rights reserved.
//

#import "CLViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface CLViewController ()
@property (strong, nonatomic) CAGradientLayer *gradient;
@end

@implementation CLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CALayer *boxLayer = self.box.layer;

//    boxLayer.backgroundColor = [UIColor colorWithRed:1.00f green:0.58f blue:0.00f alpha:1.00f].CGColor;
    boxLayer.cornerRadius = 20.0;
    boxLayer.borderColor = [UIColor colorWithRed:0.82f green:0.41f blue:0.00f alpha:1.00f].CGColor;
    boxLayer.borderWidth = 5.0;
    boxLayer.shadowColor = [UIColor colorWithWhite:0.0 alpha:1].CGColor;
    boxLayer.shadowOpacity = 1.0;
    boxLayer.shadowRadius = 20.0;

    _gradient = [CAGradientLayer layer];

    _gradient.colors = (@[
                       (id)[UIColor colorWithWhite:1 alpha:1].CGColor,
                       (id)[UIColor colorWithWhite:0 alpha:1].CGColor,
                       ]);

    _gradient.locations = (@[
                          @0.0f,
                          @1.0f
                          ]);

    [boxLayer insertSublayer: _gradient atIndex:0];
    _gradient.frame = boxLayer.frame;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
