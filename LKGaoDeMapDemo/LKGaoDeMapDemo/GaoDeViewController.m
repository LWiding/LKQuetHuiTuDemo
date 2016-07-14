//
//  GaoDeViewController.m
//  LKGaoDeMapDemo
//
//  Created by administrator on 16/7/8.
//  Copyright © 2016年 clcw. All rights reserved.
//

#import "GaoDeViewController.h"

@interface GaoDeViewController ()<UITextViewDelegate>

- (void)haha;

@end

@implementation GaoDeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel * lab = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    lab.backgroundColor = [UIColor redColor];
    [self.view addSubview:lab];

    
    // 传的是正方形，因此就可以绘制出圆了
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:lab.bounds];
    
//    // 设置填充颜色
//    UIColor *fillColor = [UIColor greenColor];
//    [fillColor set];
//    [path fill];
////
//    // 设置画笔颜色
//    UIColor *strokeColor = [UIColor blueColor];
//    [strokeColor set];
//    
//    // 根据我们设置的各个点连线
//    [path stroke];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path.CGPath;
    layer.frame = lab.bounds;

    lab.layer.mask = layer;

    
    
    //贝塞尔曲线
//    UIBezierPath * bezier = [UIBezierPath bezierPathWithRoundedRect:lab.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(20, 20)];
//    
//    CAShapeLayer * layer1 = [CAShapeLayer layer];
//    layer1.path = bezier.CGPath;
//    layer1.frame = lab.bounds;
    //layer.lineWidth = 2;
    
//    lab.layer.mask = layer1;

    
}


-(void)haha{
    
    NSLog(@"haha");
}


@end
