//
//  AViewController.m
//  AModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "AViewController.h"
#import <CommonModule/CommonModule.h>

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"AViewController dicParams:%@", self.dicParams);
}
- (IBAction)jumpBModule:(id)sender {
    NSDictionary *dic = [BProvider.shareProvider logicB];
    [RouterManager pushVCWithPath:BModulePath params:dic];
}

@end
