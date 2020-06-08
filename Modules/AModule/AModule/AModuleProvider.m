//
//  AModuleProvider.m
//  AModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "AModuleProvider.h"
#import "AViewController.h"
#import <CommonModule/RouterPath.h>

@implementation AModuleProvider
-(id)provide:(JSObjectionInjector *)context arguments:(NSArray *)arguments {

    NSString *path = arguments.firstObject;
    
    // 这边做module的路由切换
    if(path == nil){
        return nil;
    }
    
    if([path isEqualToString:AModulePath]) {
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        AViewController *vc = [[AViewController alloc] initWithNibName:@"AViewController" bundle:bundle];
        vc.dicParams = arguments.lastObject;
        return vc;
    }
    
    return nil;
}
@end
