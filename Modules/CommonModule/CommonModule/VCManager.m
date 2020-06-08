//
//  VCManager.m
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "VCManager.h"

static VCManager *manager = nil;

@implementation VCManager

+ (instancetype)shareManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[VCManager alloc] init];
    });
    return manager;
}

+ (UINavigationController *)getNavC {
    UIWindow *window = UIApplication.sharedApplication.windows.firstObject;
    UINavigationController *nvc = (UINavigationController*)window.rootViewController;
    return nvc;
}

+ (void)pushToVC:(UIViewController *)targetVC {
    
    UINavigationController *nvc = [VCManager getNavC];
    if(nvc != nil){
        [nvc pushViewController:targetVC animated:YES];
    }
}

+ (void)popTopView {
    UINavigationController *nvc = [VCManager getNavC];
    if(nvc != nil){
        [nvc popViewControllerAnimated:YES];
    }
}

@end
