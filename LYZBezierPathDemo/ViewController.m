//
//  ViewController.m
//  LYZBezierPathDemo
//
//  Created by artios on 2017/4/27.
//  Copyright © 2017年 artios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIBezierPath *bezierPath;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //    [self lyz_drawRect];
    
    //    [self lyz_drawRoundRect];
    
    //    [self lyz_drawRoundRectPart];
    
    //    [self lyz_drawOval];
    
    //    [self lyz_drawArc];
    
    //    [self lyz_drawCure];
    
    //    [self lyz_drawMoreCure];
    
    [self lyz_drawSector];
    
}


/**矩形**/
- (void)lyz_drawRect{
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    self.bezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(100, 200, 200, 200)];
    
    shapeLayer.path = self.bezierPath.CGPath;
    
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    
    [self.view.layer addSublayer:shapeLayer];
}

/**圆角矩形**/
- (void)lyz_drawRoundRect{
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    self.bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 200, 200, 200) cornerRadius:5.0f];
    
    shapeLayer.path = self.bezierPath.CGPath;
    
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    
    [self.view.layer addSublayer:shapeLayer];
}

/**部分圆角矩形**/
- (void)lyz_drawRoundRectPart{
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    self.bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 200, 200, 200) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(6.0f, 6.0f)];
    
    shapeLayer.path = self.bezierPath.CGPath;
    
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    
    [self.view.layer addSublayer:shapeLayer];
}

/**椭圆（宽高相等时是圆）**/
- (void)lyz_drawOval{
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    self.bezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 200, 200, 100)];
    
    shapeLayer.path = self.bezierPath.CGPath;
    
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    
    [self.view.layer addSublayer:shapeLayer];
}

/**圆**/
- (void)lyz_drawArc{
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    self.bezierPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 200) radius:100 startAngle:0.0 endAngle:M_PI*2/3.0 clockwise:YES];
    
    shapeLayer.path = self.bezierPath.CGPath;
    
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    
    [self.view.layer addSublayer:shapeLayer];
}

/**曲线**/
- (void)lyz_drawCure{
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    CGPoint startPoint = CGPointMake(50, 200);
    CGPoint endPoint = CGPointMake(300, 200);
    CGPoint controlPoint = CGPointMake(160, 100);
    
    self.bezierPath = [UIBezierPath bezierPath];
    [self.bezierPath moveToPoint:startPoint];
    [self.bezierPath addQuadCurveToPoint:endPoint controlPoint:controlPoint];
    
    shapeLayer.path = self.bezierPath.CGPath;
    
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    
    [self.view.layer addSublayer:shapeLayer];
}

/**连续曲线**/
- (void)lyz_drawMoreCure{
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    CGPoint startPoint = CGPointMake(50, 200);
    CGPoint endPoint = CGPointMake(300, 200);
    
    self.bezierPath = [UIBezierPath bezierPath];
    [self.bezierPath moveToPoint:startPoint];
    [self.bezierPath addCurveToPoint:endPoint controlPoint1:CGPointMake(120, 100) controlPoint2:CGPointMake(200, 300)];
    
    shapeLayer.path = self.bezierPath.CGPath;
    
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    
    [self.view.layer addSublayer:shapeLayer];
}

/**扇形**/
- (void)lyz_drawSector{
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    
    self.bezierPath = [UIBezierPath bezierPath];
    
    [self.bezierPath addArcWithCenter:CGPointMake(200, 200) radius:100 startAngle:0*M_PI endAngle:0.5*M_PI clockwise:YES];
    
    [self.bezierPath addLineToPoint:CGPointMake(200, 200)];
    
    [self.bezierPath closePath];
    
    shapeLayer.path = self.bezierPath.CGPath;
    
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor whiteColor].CGColor;
    
    [self.view.layer addSublayer:shapeLayer];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
