//
//  MyImage.m
//  JustDoIt
//
//  Created by ios004 on 16/9/15.
//  Copyright © 2016年 zsb2c. All rights reserved.
//

#import "MyImage.h"

@implementation MyImage

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawCanvas1WithFrame: (CGRect)frame
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Star Drawing
    UIBezierPath* starPath = [UIBezierPath bezierPath];
    [starPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 14.25, CGRectGetMinY(frame) + 11.5)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 16.63, CGRectGetMinY(frame) + 13.94)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 20.67, CGRectGetMinY(frame) + 14.78)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 18.1, CGRectGetMinY(frame) + 17.13)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 18.22, CGRectGetMinY(frame) + 20.09)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 14.25, CGRectGetMinY(frame) + 19.1)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 10.28, CGRectGetMinY(frame) + 20.09)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 10.4, CGRectGetMinY(frame) + 17.13)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 7.83, CGRectGetMinY(frame) + 14.78)];
    [starPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 11.87, CGRectGetMinY(frame) + 13.94)];
    [starPath closePath];
    [UIColor.grayColor setFill];
    [starPath fill];
    
    
    //// Text Drawing
    CGRect textRect = CGRectMake(CGRectGetMinX(frame) + 7, CGRectGetMinY(frame) + 29, 42, 7);
    {
        NSString* textContent = @"Hello, World!";
        NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
        textStyle.alignment = NSTextAlignmentLeft;
        
        NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: 5], NSForegroundColorAttributeName: UIColor.redColor, NSParagraphStyleAttributeName: textStyle};
        
        CGFloat textTextHeight = [textContent boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
        CGContextSaveGState(context);
        CGContextClipToRect(context, textRect);
        [textContent drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
        CGContextRestoreGState(context);
    }
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + 7, CGRectGetMinY(frame) + 43, 115, 68)];
    [UIColor.grayColor setFill];
    [ovalPath fill];
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 4, CGRectGetMinY(frame))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 18, CGRectGetMinY(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 12, CGRectGetMinY(frame) - 1) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 18, CGRectGetMinY(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 22, CGRectGetMinY(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 22, CGRectGetMinY(frame) + 4)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 29, CGRectGetMinY(frame) + 7)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 29, CGRectGetMinY(frame) + 4)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 32, CGRectGetMinY(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 36, CGRectGetMinY(frame) + 4)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 36, CGRectGetMinY(frame) + 7)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 40, CGRectGetMinY(frame) + 12)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 40, CGRectGetMinY(frame) + 16)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 40, CGRectGetMinY(frame) + 21)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 43, CGRectGetMinY(frame) + 21)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 43, CGRectGetMinY(frame) + 27)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 43, CGRectGetMinY(frame) + 31)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 48, CGRectGetMinY(frame) + 34)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 48, CGRectGetMinY(frame) + 38)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 53, CGRectGetMinY(frame) + 27)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 48, CGRectGetMinY(frame) + 21)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 43, CGRectGetMinY(frame) + 27)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 40, CGRectGetMinY(frame) + 31)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 43, CGRectGetMinY(frame) + 34)];
    [UIColor.grayColor setFill];
    [bezierPath fill];
}


@end
