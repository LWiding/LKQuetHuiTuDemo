//
//  BesierView.m
//  LKGaoDeMapDemo
//
//  Created by administrator on 16/7/13.
//  Copyright © 2016年 clcw. All rights reserved.
//

#import "BesierView.h"
#define   kDegreesToRadians(degrees)  ((pi * degrees)/ 180)

@implementation BesierView

- (void)drawRect:(CGRect)rect{
//    [self drawTrianglePath];//三角形
//    [self drawRectPath];//矩形
//    [self drawRoundedRectPath];//圆角矩形
    //    [self drawCiclePath];//圆形

//    [self drawARCPath];//画弧
//    [self drawThirdBezierPath];//三次弧
    
    [self createDottedLine];//虚线
    [self QuatuAll];
    
    
}

-(void)QuatuAll{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    
    /*NO.1画一条线
     
     CGContextSetRGBStrokeColor(context, 0.5, 0.5, 0.5, 0.5);//线条颜色
     CGContextMoveToPoint(context, 20, 20);
     CGContextAddLineToPoint(context, 200,20);
     CGContextStrokePath(context);
     */
    
    
    
    /*NO.2写文字
     
     CGContextSetLineWidth(context, 1.0);
     CGContextSetRGBFillColor (context, 0.5, 0.5, 0.5, 0.5);
     UIFont  *font = [UIFont boldSystemFontOfSize:18.0];
     [@"公司：北京中软科技股份有限公司\n部门：ERP事业部\n姓名：McLiang" drawInRect:CGRectMake(20, 40, 280, 300) withFont:font];
     */
    
    
    /*NO.3画一个正方形图形 没有边框
     
     CGContextSetRGBFillColor(context, 0, 0.25, 0, 0.5);
     CGContextFillRect(context, CGRectMake(2, 2, 270, 270));
     CGContextStrokePath(context);
     */
    
    
    /*NO.4画正方形边框
     
     CGContextSetRGBStrokeColor(context, 0.5, 0.5, 0.5, 0.5);//线条颜色
     CGContextSetLineWidth(context, 2.0);
     CGContextAddRect(context, CGRectMake(2, 2, 270, 270));
     CGContextStrokePath(context);
     */
    
    
    /*NO.5画方形背景颜色
     
     CGContextTranslateCTM(context, 0.0f, self.bounds.size.height);
     CGContextScaleCTM(context, 1.0f, -1.0f);
     UIGraphicsPushContext(context);
     CGContextSetLineWidth(context,320);
     CGContextSetRGBStrokeColor(context, 250.0/255, 250.0/255, 210.0/255, 1.0);
     CGContextStrokeRect(context, CGRectMake(0, 0, 320, 460));
     UIGraphicsPopContext();
     */
    
    /*NO.6椭圆
     
     CGRect aRect= CGRectMake(80, 80, 160, 100);
     CGContextSetRGBStrokeColor(context, 0.6, 0.9, 0, 1.0);
     CGContextSetLineWidth(context, 3.0);
     CGContextAddEllipseInRect(context, aRect); //椭圆
     CGContextDrawPath(context, kCGPathStroke);
     */
    
    /*NO.7
     CGContextBeginPath(context);
     CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);
     CGContextMoveToPoint(context, 100, 100);
     CGContextAddArcToPoint(context, 50, 100, 50, 150, 50);
     CGContextStrokePath(context);
     */
    
    /*NO.8渐变
     CGContextClip(context);
     CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
     CGFloat colors[] =
     {
     204.0 / 255.0, 224.0 / 255.0, 244.0 / 255.0, 1.00,
     29.0 / 255.0, 156.0 / 255.0, 215.0 / 255.0, 1.00,
     0.0 / 255.0,  50.0 / 255.0, 126.0 / 255.0, 1.00,
     };
     CGGradientRef gradient = CGGradientCreateWithColorComponents
     (rgb, colors, NULL, sizeof(colors)/(sizeof(colors[0])*4));
     CGColorSpaceRelease(rgb);
     CGContextDrawLinearGradient(context, gradient,CGPointMake
     (0.0,0.0) ,CGPointMake(0.0,self.frame.size.height),
     kCGGradientDrawsBeforeStartLocation);
     */
    
    
    /* NO.9四条线画一个正方形
     //画线
     UIColor *aColor = [UIColor colorWithRed:0 green:1.0 blue:0 alpha:0];
     CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1.0);
     CGContextSetFillColorWithColor(context, aColor.CGColor);
     CGContextSetLineWidth(context, 4.0);
     CGPoint aPoints[5];
     aPoints[0] =CGPointMake(60, 60);
     aPoints[1] =CGPointMake(260, 60);
     aPoints[2] =CGPointMake(260, 300);
     aPoints[3] =CGPointMake(60, 300);
     aPoints[4] =CGPointMake(60, 60);
     CGContextAddLines(context, aPoints, 5);
     CGContextDrawPath(context, kCGPathStroke); //开始画线
     */
    
    
    
    /*  NO.10
     UIColor *aColor = [UIColor colorWithRed:0 green:1.0 blue:0 alpha:0];
     CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1.0);
     CGContextSetFillColorWithColor(context, aColor.CGColor);
     //椭圆
     CGRect aRect= CGRectMake(80, 80, 160, 100);
     CGContextSetRGBStrokeColor(context, 0.6, 0.9, 0, 1.0);
     CGContextSetLineWidth(context, 3.0);
     CGContextSetFillColorWithColor(context, aColor.CGColor);
     CGContextAddRect(context, rect); //矩形
     CGContextAddEllipseInRect(context, aRect); //椭圆
     CGContextDrawPath(context, kCGPathStroke);
     */
    
    
    
    /*  NO.11
     画一个实心的圆
     
     CGContextFillEllipseInRect(context, CGRectMake(95, 95, 100.0, 100));
     */
    
    
    
    /*NO.12
     画一个菱形
     CGContextSetLineWidth(context, 2.0);
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     CGContextMoveToPoint(context, 100, 100);
     CGContextAddLineToPoint(context, 150, 150);
     CGContextAddLineToPoint(context, 100, 200);
     CGContextAddLineToPoint(context, 50, 150);
     CGContextAddLineToPoint(context, 100, 100);
     CGContextStrokePath(context);
     */
    
    /*NO.13 画矩形
     CGContextSetLineWidth(context, 2.0);
     
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     
     CGRect rectangle = CGRectMake(60,170,200,80);
     
     CGContextAddRect(context, rectangle);
     
     CGContextStrokePath(context);
     */
    
    
    /*椭圆
     */
    CGContextSetLineWidth(context, 2.0);
    
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    
    CGRect rectangle = CGRectMake(60,230,200,60);
    
    CGContextAddEllipseInRect(context, rectangle);
    
    CGContextStrokePath(context);
    
    /*用红色填充了一段路径:
     
     */
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 150, 100);
    
    CGContextAddLineToPoint(context, 150, 160);
    CGContextAddLineToPoint(context, 120, 152);
//    CGContextAddLineToPoint(context, 100, 200);

//    CGContextAddLineToPoint(context, 100, 200);
//    CGContextAddLineToPoint(context, 50, 150);
//    CGContextAddLineToPoint(context, 100, 100);
    CGContextSetFillColorWithColor(context, [UIColor cyanColor].CGColor);
    CGContextFillPath(context);
    
    //画笑脸弧线
    //左
//    CGContextSetRGBStrokeColor(context, 0, 0, 1, 1);//改变画笔颜色
//    CGContextMoveToPoint(context, 140, 80);//开始坐标p1
//    //CGContextAddArcToPoint(CGContextRef c, CGFloat x1, CGFloat y1,CGFloat x2, CGFloat y2, CGFloat radius)
//    //x1,y1跟p1形成一条线的坐标p2，x2,y2结束坐标跟p3形成一条线的p3,radius半径,注意, 需要算好半径的长度,
//    CGContextAddArcToPoint(context, 148, 68, 156, 80, 10);
//    CGContextStrokePath(context);//绘画路径
//    
//    //右
//    CGContextMoveToPoint(context, 160, 80);//开始坐标p1
//    //CGContextAddArcToPoint(CGContextRef c, CGFloat x1, CGFloat y1,CGFloat x2, CGFloat y2, CGFloat radius)
//    //x1,y1跟p1形成一条线的坐标p2，x2,y2结束坐标跟p3形成一条线的p3,radius半径,注意, 需要算好半径的长度,
//    CGContextAddArcToPoint(context, 168, 68, 176, 80, 10);
//    CGContextStrokePath(context);//绘画路径
//    
//    //右
//    CGContextMoveToPoint(context, 150, 90);//开始坐标p1
//    //CGContextAddArcToPoint(CGContextRef c, CGFloat x1, CGFloat y1,CGFloat x2, CGFloat y2, CGFloat radius)
//    //x1,y1跟p1形成一条线的坐标p2，x2,y2结束坐标跟p3形成一条线的p3,radius半径,注意, 需要算好半径的长度,
//    CGContextAddArcToPoint(context, 158, 102, 166, 90, 10);
//    CGContextStrokePath(context);//绘画路径
    
    /*填充一个蓝色边的红色矩形
     CGContextSetLineWidth(context, 2.0);
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     CGRect rectangle = CGRectMake(60,170,200,80);
     CGContextAddRect(context, rectangle);
     CGContextStrokePath(context);
     CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
     CGContextFillRect(context, rectangle);
     */
    
    /*画弧
     //弧线的是通过指定两个切点，还有角度，调用CGContextAddArcToPoint()绘制
     */
    CGContextSetLineWidth(context, 2.0);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddArcToPoint(context, 100,200, 300,200, 100);

    CGContextStrokePath(context);
    
    
    /*
     绘制贝兹曲线
     //贝兹曲线是通过移动一个起始点，然后通过两个控制点,还有一个中止点，调用CGContextAddCurveToPoint() 函数绘制
     CGContextSetLineWidth(context, 2.0);
     
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     
     CGContextMoveToPoint(context, 10, 10);
     
     CGContextAddCurveToPoint(context, 0, 50, 300, 250, 300, 400);
     
     CGContextStrokePath(context);
     */
    
    /*绘制二次贝兹曲线
     
     CGContextSetLineWidth(context, 2.0);
     
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     
     CGContextMoveToPoint(context, 10, 200);
     
     CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
     
     CGContextStrokePath(context);
     */
    
    /*绘制虚线
     CGContextSetLineWidth(context, 5.0);
     
     CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
     
     CGFloat dashArray[] = {2,6,4,2};
     
     CGContextSetLineDash(context, 3, dashArray, 4);//跳过3个再画虚线，所以刚开始有6-（3-2）=5个虚点
     
     CGContextMoveToPoint(context, 10, 200);
     
     CGContextAddQuadCurveToPoint(context, 150, 10, 300, 200);
     
     CGContextStrokePath(context);
     */
    /*绘制图片
     NSString* imagePath = [[NSBundle mainBundle] pathForResource:@"dog" ofType:@"png"];
     UIImage* myImageObj = [[UIImage alloc] initWithContentsOfFile:imagePath];
     //[myImageObj drawAtPoint:CGPointMake(0, 0)];
     [myImageObj drawInRect:CGRectMake(0, 0, 320, 480)];
     
     NSString *s = @"我的小狗";
     
     [s drawAtPoint:CGPointMake(100, 0) withFont:[UIFont systemFontOfSize:34.0]];
     */
    
    /*
     NSString *path = [[NSBundle mainBundle] pathForResource:@"dog" ofType:@"png"];
     UIImage *img = [UIImage imageWithContentsOfFile:path];
     CGImageRef image = img.CGImage;
     CGContextSaveGState(context);
     CGRect touchRect = CGRectMake(0, 0, img.size.width, img.size.height);
     CGContextDrawImage(context, touchRect, image);
     CGContextRestoreGState(context);
     */
    
    
    /*NSString *path = [[NSBundle mainBundle] pathForResource:@"dog" ofType:@"png"];
     UIImage *img = [UIImage imageWithContentsOfFile:path];
     CGImageRef image = img.CGImage;
     CGContextSaveGState(context);
     
     CGContextRotateCTM(context, M_PI);
     CGContextTranslateCTM(context, -img.size.width, -img.size.height);
     
     CGRect touchRect = CGRectMake(0, 0, img.size.width, img.size.height);
     CGContextDrawImage(context, touchRect, image);
     CGContextRestoreGState(context);*/
    
    /*
     NSString *path = [[NSBundle mainBundle] pathForResource:@"dog" ofType:@"png"];
     UIImage *img = [UIImage imageWithContentsOfFile:path];
     CGImageRef image = img.CGImage;
     
     CGContextSaveGState(context);
     
     CGAffineTransform myAffine = CGAffineTransformMakeRotation(M_PI);
     myAffine = CGAffineTransformTranslate(myAffine, -img.size.width, -img.size.height);
     CGContextConcatCTM(context, myAffine);
     
     CGContextRotateCTM(context, M_PI);
     CGContextTranslateCTM(context, -img.size.width, -img.size.height);
     
     CGRect touchRect = CGRectMake(0, 0, img.size.width, img.size.height);
     CGContextDrawImage(context, touchRect, image);
     CGContextRestoreGState(context); 
     */
}

// 画三角形
- (void)drawTrianglePath {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width - 40, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width / 2, self.frame.size.height - 20)];
    
    // 最后的闭合线是可以通过调用closePath方法来自动生成的，也可以调用-addLineToPoint:方法来添加
    //  [path addLineToPoint:CGPointMake(20, 20)];
    
    [path closePath];
    
    // 设置线宽
    path.lineWidth = 1.5;
    
    // 设置填充颜色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    // 设置画笔颜色
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    
    // 根据我们设置的各个点连线
    [path stroke];
}

//圆形
- (void)drawCiclePath {
    // 传的是正方形，因此就可以绘制出圆了
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.width - 40)];
    
    // 设置填充颜色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    // 设置画笔颜色
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    
    // 根据我们设置的各个点连线
    [path stroke];
}

// 画矩形
- (void)drawRectPath {
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.height - 40)];
    
    path.lineWidth = 1.5;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinBevel;
    
    // 设置填充颜色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    // 设置画笔颜色
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    // 根据我们设置的各个点连线
    [path stroke];
}

  //圆角矩形
- (void)drawRoundedRectPath {
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, self.frame.size.width - 40, 30) cornerRadius:10];
    //只有一个角是圆角
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, self.frame.size.width - 40, self.frame.size.height - 40) byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(20, 20)];
    // 设置填充颜色
    UIColor *fillColor = [UIColor greenColor];
    [fillColor set];
    [path fill];
    
    path.lineWidth = 3;//边kaung宽
    // 设置画笔颜色
    UIColor *strokeColor = [UIColor blueColor];
    [strokeColor set];
    
    // 根据我们设置的各个点连线
    [path stroke];
}

//画弧
- (void)drawARCPath {
    const CGFloat pi = 3.14159265359;
    
    CGPoint center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center
                                                        radius:100
                                                    startAngle:0
                                                      endAngle:kDegreesToRadians(135)
                                                     clockwise:YES];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];
}

//三次弧
- (void)drawThirdBezierPath {
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 设置起始端点
    [path moveToPoint:CGPointMake(20, 150)];
    
    [path addCurveToPoint:CGPointMake(300, 150)
            controlPoint1:CGPointMake(160, 0)
            controlPoint2:CGPointMake(160, 250)];
    
    [path moveToPoint:CGPointMake(200, 200)];
//    [path moveToPoint:CGPointMake(20, 150)];
//    [path moveToPoint:CGPointMake(20, 150)];

    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];
}

//虚线
-(void)createDottedLine
{
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    [shapeLayer setBounds:self.bounds];
    [shapeLayer setPosition:self.center];
    [shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
    
    // 设置虚线颜色为blackColor
    [shapeLayer setStrokeColor:[[UIColor colorWithRed:0.875 green:0.245 blue:0.342 alpha:1.000] CGColor]];
    
    // 3.0f设置虚线的宽度
    [shapeLayer setLineWidth:2.0f];
    [shapeLayer setLineJoin:kCALineJoinRound];
    
    // 5=线的宽度 3=每条线的间距
    [shapeLayer setLineDashPattern:
     [NSArray arrayWithObjects:[NSNumber numberWithInt:5],
      [NSNumber numberWithInt:3],nil]];
    
    // Setup the path
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 20, 89);
    CGPathAddLineToPoint(path, NULL, 320,89);
    
    [shapeLayer setPath:path];
    CGPathRelease(path);
    
    // 可以把self改成任何你想要的UIView, 下图演示就是放到UITableViewCell中的
    [[self layer] addSublayer:shapeLayer];
    
}



@end
