//
//  ViewController.m
//  OCModuleDemo
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "ViewController.h"
#import <CommonModule/CommonModule.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self jump];
    });
}

- (void)jump {
    NSDictionary *dic = [AProvider.shareProvider logicA];
    [RouterManager pushVCWithPath:AModulePath params:dic];
}

@end
