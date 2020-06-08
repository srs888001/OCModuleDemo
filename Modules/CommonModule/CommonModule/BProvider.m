//
//  BProvider.m
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import "BProvider.h"
#import <Objection/Objection.h>

@implementation BProvider

+ (instancetype)shareProvider {
    JSObjectionInjector* injector = [JSObjection defaultInjector];
    BProvider *_provider = [injector getObject:BProvider.class];
    return _provider;
}
- (NSDictionary *)logicB {
    return @{};
}

@end
