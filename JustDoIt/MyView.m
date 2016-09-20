//
//  MyView.m
//  JustDoIt
//
//  Created by ios004 on 16/9/15.
//  Copyright © 2016年 zsb2c. All rights reserved.
//

#import "MyView.h"

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


//
//- (void)drawRect:(CGRect)rect
//{
//    CGContextRef context = UIGraphicsGetCurrentContext() ;
//    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
//    NSString * strl = @"画线";
//   
//    UIBezierPath *btnPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, 70, 50) cornerRadius:4];
//    
////    do
////    {
////        
////        CGContextSaveGState(context);
////        CGContextSetShadowWithColor(context, CGSizeMake(-1, -1), 3.0, [UIColor whiteColor].CGColor);
////        CGContextAddPath(context, btnPath.CGPath);
////        CGContextFillPath(context);
////        CGContextRestoreGState(context);
////        
////    }while(0);
//    
//    CGContextSetShadow(context, CGSizeMake(2, 2), 10);
//    
//    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
//    
//    [[UIColor blackColor]setStroke];
//    
//    [btnPath fill];
//    
//
//    NSString * str3 = @"asdf";
//    
//
//    
//    
//}





//- (void) drawRect: (CGRect) rect {
//    
//    
//    //第一种
////    UIBezierPath* p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20,20,50,60)];
////    
////    [[UIColor blueColor] setFill];
////    
////    [p fill];
//    
//    //第二种
//    CGContextRef con = UIGraphicsGetCurrentContext();
//    
//    CGContextAddEllipseInRect(con, CGRectMake(0,0,100,100));
//    
//    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
//    
//    CGContextFillPath(con);
//    
//    
//    
//    CGContextRef com = UIGraphicsGetCurrentContext() ;
//    CGContextAddEllipseInRect(com, CGRectMake(0, 0, 50, 50));
//    CGContextSetFillColorWithColor(com, [UIColor redColor].CGColor);
//    CGContextFillPath(com);
//
//    
//}
//
//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//    
//    }
//
//    return self ;
//}



- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 100, 100));
    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
    CGContextFillPath(ctx);
    

}



@end
