//
//  DSWModelViewController.m
//  Demo
//
//  Created by 段盛武 on 16/7/10.
//  Copyright © 2016年 D.James. All rights reserved.
//

#import "DSWModelViewController.h"

@interface DSWModelViewController ()

@property(nonatomic,weak) UIView *fenView;
@end

@implementation DSWModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.alpha = 0.3;
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height / 2, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height / 2)];
//    redView.userInteractionEnabled = NO;
    self.fenView=redView;
    [self.view addSubview:redView];
    
    redView.backgroundColor = [UIColor redColor];

    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
      UITouch*touch=touches.anyObject;
      CGPoint currentPoint=[touch locationInView:self.view];

    if (!CGRectContainsPoint(self.fenView.frame, currentPoint)) {
        [self dismissViewControllerAnimated:YES completion:nil];

    }
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
