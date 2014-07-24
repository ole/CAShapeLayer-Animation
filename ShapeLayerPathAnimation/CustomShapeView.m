//
//  CustomShapeView.m
//  ShapeLayerPathAnimation
//
//  Created by Ole Begemann on 24.07.14.
//  Copyright (c) 2014 Ole Begemann. All rights reserved.
//

#import "CustomShapeView.h"
#import "CustomShapeLayer.h"

@interface CustomShapeView ()

@property (readonly, nonatomic) CAShapeLayer *shapeLayer;

@end


@implementation CustomShapeView

+ (Class)layerClass
{
    return [CustomShapeLayer class];
}

- (CAShapeLayer *)shapeLayer
{
    return (CAShapeLayer *)self.layer;
}

- (UIColor *)backgroundColor
{
    return [UIColor colorWithCGColor:self.shapeLayer.fillColor];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    self.shapeLayer.fillColor = backgroundColor.CGColor;
}

@end
