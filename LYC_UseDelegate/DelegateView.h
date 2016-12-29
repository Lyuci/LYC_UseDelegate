//
//  DelegateView.h
//  LYC_UseDelegate
//
//  Created by 李娜 on 2016/12/29.
//  Copyright © 2016年 Lyuci. All rights reserved.
//

#import <UIKit/UIKit.h>

#warning  第一步：声明代理
@protocol DelegateViewDelegate <NSObject>
#warning 第二部: 声明代理方法
- (void)changeColor:(UIView *)view;
- (void)changeLocation:(UIView *)view;
@end

@interface DelegateView : UIView
#warning 第三部: 声明代理属性
@property (nonatomic, assign) id<DelegateViewDelegate> delegate;
@end
