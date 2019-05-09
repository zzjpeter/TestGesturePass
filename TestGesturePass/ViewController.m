//
//  ViewController.m
//  TestGesturePass
//
//  Created by 朱志佳 on 2019/5/9.
//  Copyright © 2019 朱志佳. All rights reserved.
//

#import "ViewController.h"
#import "ThirdView.h"
#import "SecondView.h"
#import "FirstView.h"
@interface ViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic,strong) FirstView *firstView;
@property (nonatomic,strong) SecondView *secondView;
@property (nonatomic,strong) ThirdView *thirdView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self buildView];
    
    //[self test];
    
    [self test1];
}

- (void)test {
    
    [self.view addSubview:self.firstView];
    [self.view addSubview:self.secondView];
    [self.view addSubview:self.thirdView];
    
}

- (void)test1 {
    
    [self.view addSubview:self.firstView];
    [self.firstView addSubview:self.secondView];
    [self.secondView addSubview:self.thirdView];
    
}

- (void)buildView{
    
    [self addTapGesture];
}

- (void)addTapGesture{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    //tap.delegate = self;
    [self.view addGestureRecognizer:tap];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return YES;
}

- (void)onTap:(UITapGestureRecognizer *)gesture {
    NSLog(@"%@##%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (FirstView *)firstView {
    if (!_firstView) {
        _firstView = [[FirstView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    }
    return _firstView;
}

- (SecondView *)secondView {
    if (!_secondView) {
        _secondView = [[SecondView alloc] initWithFrame:CGRectMake(0, 0, 250, 250)];
    }
    return _secondView;
}

- (ThirdView *)thirdView {
    if (!_thirdView) {
        _thirdView = [[ThirdView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    }
    return _thirdView;
}



@end
