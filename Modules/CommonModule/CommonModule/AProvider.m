//
//  AProvider.m
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "AProvider.h"
#import <Objection/Objection.h>

@implementation AProvider

+ (instancetype)shareProvider {
    JSObjectionInjector* injector = [JSObjection defaultInjector];
    AProvider *_provider = [injector getObject:AProvider.class];
    return _provider;
}
- (NSDictionary *)logicA {
    return @{};
}

@end
