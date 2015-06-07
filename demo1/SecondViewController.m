//
//  SecondViewController.m
//  demo1
//
//  Created by Roki on 5/28/15.
//  Copyright (c) 2015 Roki. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController (){
    UITextField *_textField;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //添加一个按钮用于返回ViewController
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 200, 300, 44)];
    [btn setTitle:@"BackToViewController" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(backToViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    //添加一个UITextField
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 300, 44)];
    _textField.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_textField];
}

- (void)backToViewController {
    //当点击返回ViewController时回调
    if (self.returnValueBlock != nil) {
        self.returnValueBlock(_textField.text);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)returnValue:(ReturnValueBlock)block {
    self.returnValueBlock = block;
}

@end
