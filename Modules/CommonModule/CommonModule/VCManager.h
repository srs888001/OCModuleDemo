//
//  VCManager.h
//  CommonModule
//
//  Created by SRS on 2020/6/8.
//  Copyright © 2020 agora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCManager : NSObject

+ (void)pushToVC:(UIViewController *)targetVC;
+ (void)popTopView;

@end

NS_ASSUME_NONNULL_END
