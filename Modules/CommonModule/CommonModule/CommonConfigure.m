//
//  CommonConfigure.m
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "CommonConfigure.h"
#import "AProvider.h"
#import "BProvider.h"

@implementation CommonConfigure

+(void)load{
    JSObjectionInjector* injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[self.class new]];
    [JSObjection setDefaultInjector:injector];
}

//-(void)configure {
//    [self bind:bj toClass:AProvider.class];
//}

@end

