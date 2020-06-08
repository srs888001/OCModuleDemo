//
//  AProvider.h
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AProvider : NSObject

+ (instancetype)shareProvider;
- (NSDictionary *)logicA;

@end

NS_ASSUME_NONNULL_END
