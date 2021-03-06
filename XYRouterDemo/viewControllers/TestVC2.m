//
//  TestVC2.m
//  XYRouter
//
//  Created by heaven on 15/7/23.
//  Copyright (c) 2015年 heaven. All rights reserved.
//

#import "TestVC2.h"
#import "XYRouter.h"
#import "UIViewController+nvcItem.h"

@interface TestVC2 ()

@end

@implementation TestVC2

- (void)dealloc
{
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"TestVC2";
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 200, 200, 50);
    label.text = NSStringFromClass([self class]);
    [self.view addSubview:label];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 250, 200, 50);
    [btn setTitle:@"window://nvc_TableVC" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(goTableVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    [self addRightBarButtonItem];
    [self addPathButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)back
{
    [[XYRouter sharedInstance] openURLString:@"../"];
}
- (void)goTableVC
{
    [[XYRouter sharedInstance] openURLString:@"window://nvc_TableVC"];
}

@end
