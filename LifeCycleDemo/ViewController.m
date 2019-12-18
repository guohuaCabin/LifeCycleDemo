//
//  ViewController.m
//  LifeCycleDemo
//
//  Created by 秦国华 on 2019/12/17.
//  Copyright © 2019 秦国华. All rights reserved.
//

#import "ViewController.h"
#import "lifeView.h"
@interface ViewController ()

@property (nonatomic,strong) lifeView *ssview;

@end

@implementation ViewController
#pragma mark 1.初始化方法
- (instancetype)init{
    self = [super init];
    if(self){
        NSLog(@"%s",__func__);
        
    }
    return self;
}

-(void)awakeFromNib
{
    [super awakeFromNib];
}


#pragma mark 2.加载view方法
- (void)loadView{
    
    [super loadView];
    NSLog(@"%s",__func__);
}
 
#pragma mark 3.加载方法
- (void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"%s",__func__);
    self.view.backgroundColor = [UIColor redColor];
    _ssview = [[lifeView alloc]init];
    [self.view addSubview:_ssview];
}
 
#pragma mark 4.将要修改视图大小方法
- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];

    NSLog(@"%s",__func__);
}
 
#pragma mark 5.修改视图完成大小方法
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    NSLog(@"%s",__func__);
}
 
 
#pragma mark 6.将要进来方法
- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    NSLog(@"%s",__func__);
}
 
#pragma mark 7.已经进来方法
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NSLog(@"%s",__func__);
    
//    [_ssview fillData:nil];
     NSLog(@"111%s",__func__);
}
 
#pragma mark 8.将要进来离开方法
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    NSLog(@"%s",__func__);
 
}
 
#pragma mark 9.已经离开方法
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];

    NSLog(@"%s",__func__);
}
 
#pragma mark 内存溢出的方法 只要内存溢出，就会调用方法 区域[视图加载完毕--视图离开的方法]
- (void)didReceiveMemoryWarning{
    NSLog(@"%s",__func__);
}
 
#pragma mark 释放内存的方法 只要引用计数位0，就会调用，区域[视图加载完毕--视图离开的方法]
- (void)dealloc{
    NSLog(@"%s",__func__);
    
}


@end
