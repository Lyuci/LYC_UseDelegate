//
//  DelegateView.m
//  LYC_UseDelegate
//
//  Created by 李娜 on 2016/12/29.
//  Copyright © 2016年 Lyuci. All rights reserved.
//

#import "DelegateView.h"

@implementation DelegateView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:0.991 green:0.534 blue:0.682 alpha:1.000];
        
    }return self;
}

#warning 第四步: 制定代理方法执行时刻
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.delegate changeColor:self];
    [self.delegate changeLocation:self];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
