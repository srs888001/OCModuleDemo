//
//  AModuleProvider.m
//  AModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "BModuleProvider.h"
#import "BViewController.h"
#import <CommonModule/RouterPath.h>

@implementation BModuleProvider
-(id)provide:(JSObjectionInjector *)context arguments:(NSArray *)arguments {

    NSString *path = arguments.firstObject;
    
    // 这边做module的路由切换
    if(path == nil){
        return nil;
    }
    
    if([path isEqualToString:BModulePath]) {
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        BViewController *vc = [[BViewController alloc] initWithNibName:@"BViewController" bundle:bundle];
        vc.dicParams = arguments.lastObject;
        return vc;
    }
    
    return nil;
}
@end
