//
//  RouterManager.m
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "RouterManager.h"
#import <Objection/Objection.h>
#import <UIKit/UIKit.h>
#import "VCManager.h"

@implementation RouterManager
+(void)pushVCWithPath:(NSString *)path params:(NSDictionary*)params {
    
    Class class = NSClassFromString(path);
    if(class == nil){
        return;
    }
    
    JSObjectionInjector* injector = [JSObjection defaultInjector];
    UIViewController *vc = [injector getObject:class argumentList:@[path, params]];
    if(vc != nil){
        [VCManager pushToVC:vc];
    }
}
@end
