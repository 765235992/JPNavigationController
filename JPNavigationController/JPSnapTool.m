//
//  JPSnapTool.m
//  JPNavigationController
//
//  Hello! I am NewPan from Guangzhou of China, Glad you could use my framework, If you have any question or wanna to contact me, please open https://github.com/Chris-Pan or http://www.jianshu.com/users/e2f2d779c022/latest_articles
//

#import "JPSnapTool.h"

#define kShadowImagePath @"JPImage.bundle/shadow"
@implementation JPSnapTool

+(UIImage *)snapShotWithView:(UIView *)view{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *aImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return aImage;
}

+(UIImage *)mixShadowWithView:(UIView *)view{
    CGFloat scale = [UIScreen mainScreen].scale/2;
    UIImage *aImage = [self snapShotWithView:view];
    
    UIImage *shadow = [UIImage imageNamed:kShadowImagePath];
    CGRect snapRect = CGRectMake(0, 0, shadow.size.width, shadow.size.height);
    CGRect imageRect = CGRectMake(shadowWidth*scale, 0, JPScreenWidth, JPScreenHeight);
    
    UIGraphicsBeginImageContextWithOptions(shadow.size, NO, aImage.scale);
    [shadow drawInRect:snapRect];
    [aImage drawInRect:imageRect];
    UIImage *snapImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapImage;
}

@end
