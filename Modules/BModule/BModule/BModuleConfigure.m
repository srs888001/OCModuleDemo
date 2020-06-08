//
//  AModuleConfigure.m
//  AModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "BModuleConfigure.h"
#import "BModuleProvider.h"
#import "BViewController.h"
#import "BProviderLmpl.h"

@implementation BModuleConfigure

+(void)load{
    JSObjectionInjector* injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[self.class new]];
    [JSObjection setDefaultInjector:injector];
}

-(void)configure {
    
    BProviderLmpl *mlpl = [BProviderLmpl new];
    [self bind:mlpl toClass:BProvider.class];
    [self bindProvider:BModuleProvider.new toClass:BViewController.class];
}

@end
