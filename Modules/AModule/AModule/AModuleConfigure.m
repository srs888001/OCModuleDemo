//
//  AModuleConfigure.m
//  AModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "AModuleConfigure.h"
#import "AModuleProvider.h"
#import "AViewController.h"
#import "AProviderLmpl.h"

@implementation AModuleConfigure

+(void)load{
    JSObjectionInjector* injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[self.class new]];
    [JSObjection setDefaultInjector:injector];
}

-(void)configure {
    
    AProviderLmpl *mlpl = [AProviderLmpl new];
    [self bind:mlpl toClass:AProvider.class];
    [self bindProvider:AModuleProvider.new toClass:AViewController.class];
}

@end
