//
//  SecondViewController.h
//  demo1
//
//  Created by Roki on 5/28/15.
//  Copyright (c) 2015 Roki. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义一个block
typedef void (^ReturnValueBlock)(NSString *value);

@interface SecondViewController : UIViewController

@property (nonatomic,copy)ReturnValueBlock returnValueBlock;

//回调方法
- (void)returnValue:(ReturnValueBlock)block;


@end
