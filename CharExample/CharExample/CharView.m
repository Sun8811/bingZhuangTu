//
//  CharView.m
//  CharExample
//
//  Created by jiwei on 14-9-10.
//  Copyright (c) 2014年 qingyun. All rights reserved.
//

#import "CharView.h"

@implementation CharView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.


- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddArc(ctx, 50, 50, 30, 2 * 0 * M_PI, 2 * .3 * M_PI, 0);
    CGContextAddLineToPoint(ctx, 50, 50);
    CGContextSetRGBFillColor(ctx, 255 / 255, 255 / 255, 0 / 255, 1);
    CGContextFillPath(ctx);
  
    CGContextAddArc(ctx, 50, 50, 30, 2 * .3 * M_PI, 2 * .6 * M_PI, 0);
    CGContextAddLineToPoint(ctx, 50, 50);
    CGContextSetRGBFillColor(ctx, 255 / 255.0, 0 / 255.0, 255 / 255.0, 1);
    CGContextFillPath(ctx);
    
    CGContextAddArc(ctx, 50, 50, 30, 2 * .6 * M_PI, 2 * 1 * M_PI, 0);
    CGContextAddLineToPoint(ctx, 50, 50);
    CGContextSetRGBFillColor(ctx, 0 / 255.0, 255 / 255.0, 255 / 255.0, 1);
    CGContextFillPath(ctx);

}


@end
