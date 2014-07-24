//
//  ViewController.m
//  ShapeLayerPathAnimation
//
//  Created by Ole Begemann on 24.07.14.
//  Copyright (c) 2014 Ole Begemann. All rights reserved.
//

#import "ViewController.h"
#import "CustomShapeView.h"

typedef enum : NSUInteger {
    CustomShapeStateSmall,
    CustomShapeStateBig,
} CustomShapeState;


@interface ViewController ()

@property (weak, nonatomic) IBOutlet CustomShapeView *customShapeView;
@property (nonatomic) CustomShapeState customShapeState;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.customShapeState = CustomShapeStateSmall;
    self.customShapeView.layer.borderWidth = 1.0;
    self.customShapeView.layer.borderColor = UIColor.blackColor.CGColor;
}

- (IBAction)animateShape:(id)sender
{
    CGRect newBounds = CGRectZero;
    if (self.customShapeState == CustomShapeStateSmall) {
        newBounds = CGRectMake(0, 0, 250, 250);
        self.customShapeState = CustomShapeStateBig;
    } else {
        newBounds = CGRectMake(0, 0, 100, 100);
        self.customShapeState = CustomShapeStateSmall;
    }

    [UIView animateWithDuration:1.0 delay:0.0 usingSpringWithDamping:0.3 initialSpringVelocity:0.0 options:0 animations:^{
        self.customShapeView.bounds = newBounds;
    } completion:nil];
}

@end
