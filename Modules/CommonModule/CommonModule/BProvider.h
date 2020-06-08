//
//  BProvider.h
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BProvider : NSObject

+ (instancetype)shareProvider;
- (NSDictionary *)logicB;

@end

NS_ASSUME_NONNULL_END
