//
//  ViewController.m
//  Demo
//
//  Created by 段盛武 on 16/7/10.
//  Copyright © 2016年 D.James. All rights reserved.
//

#import "ViewController.h"
#import "DSWModelViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ModelDidClick:(id)sender {
    
    DSWModelViewController *modelVC = [[DSWModelViewController alloc]init];
    
    modelVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    
    [self presentViewController:modelVC animated:YES completion:nil];
}

@end
