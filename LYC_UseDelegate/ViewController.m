//
//  ViewController.m
//  LYC_UseDelegate
//
//  Created by 李娜 on 2016/12/29.
//  Copyright © 2016年 Lyuci. All rights reserved.
//

#import "ViewController.h"
#import "DelegateView.h"
// 随机色

@interface ViewController ()<DelegateViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    DelegateView *delegateV = [[DelegateView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
#warning 第五步: 指定代理人
    delegateV.delegate = self;
    [self.view addSubview:delegateV];
    
}

#warning 第六步: 实现代理方法
- (void)changeLocation:(UIView *)view
{
    view.frame = CGRectMake(view.frame.origin.x, view.frame.origin.y + 10, view.frame.size.width, view.frame.size.height);
}

- (void)changeColor:(UIView *)view
{
    view.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 256.0 green:arc4random() % 256 / 256.0 blue:arc4random() % 256 / 256.0 alpha:1];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
