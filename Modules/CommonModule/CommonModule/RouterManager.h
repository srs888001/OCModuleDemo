//
//  RouterManager.h
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RouterManager : NSObject

+(void)pushVCWithPath:(NSString *)path params:(NSDictionary*)params;

@end

NS_ASSUME_NONNULL_END
