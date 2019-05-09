//
//  SecondView.m
//  TestGesturePass
//
//  Created by 朱志佳 on 2019/5/9.
//  Copyright © 2019 朱志佳. All rights reserved.
//

#import "SecondView.h"

@interface SecondView ()<UIGestureRecognizerDelegate>

@end

@implementation SecondView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
        
        [self buildView];
    }
    return self;
}

#pragma mark -初始化方法
-(void)initialize{
    
    //NSLog(@"%s",__func__);
    self.backgroundColor = [UIColor greenColor];
}

- (void)buildView{
    
    [self addTapGesture];
}

- (void)addTapGesture{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    tap.delegate = self;
    [self addGestureRecognizer:tap];
}

- (void)onTap:(UITapGestureRecognizer *)gesture {
    NSLog(@"%@##%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return YES;
}

#pragma mark -数据赋值
- (void)setObj:(id)obj{
    
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    //setting subViews Frame 设置子控件的frame
    NSLog(@"layoutSubViews view.frame:%@",NSStringFromCGRect(self.frame));
    
}

-(void)dealloc{
    NSLog(@"%@ dealloc",NSStringFromClass([self class]));
}

@end
