//
//  UIViewController+NavExtesion.h
//  JPNavigationController
//
//  Created by Chris on 16/7/19.
//  Copyright © 2016年 Chris. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JPNavigationController.h"

@interface UIViewController (NavExtesion)
/** 全屏右滑返回手势是否可用 */
@property (nonatomic, assign) BOOL jp_fullScreenPopGestureEnabled;
/** 每个VC外包的导航控制器 */
@property (nonatomic, weak) JPNavigationController *jp_navigationController;
@end
