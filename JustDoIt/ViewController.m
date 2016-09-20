//
//  ViewController.m
//  JustDoIt
//
//  Created by ios004 on 16/9/13.
//  Copyright © 2016年 zsb2c. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
#import "MyImage.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    MyView  *My = [[MyView alloc]initWithFrame: CGRectMake(50, 50, 100, 100)];
    
    
    [self.view addSubview:My];
    
    [My setNeedsDisplay];
    
    
    
    MyImage  *MyI = [[MyImage alloc]initWithFrame: CGRectMake(50, 200, 200, 200)];
    
    [self.view addSubview:MyI];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
