//
//  MBProgressHUD+HUD.m
//  MBProgressHUD
//
//  Created by careland on 2018/6/15.
//  Copyright © 2018年 careland. All rights reserved.
//

#import "MBProgressHUD+HUD.h"

static const NSTimeInterval TipMessageDefaultDuration = 1.0f; //Tip默认显示时长
static const NSTimeInterval ImageMessageDefaultDuration = 1.0f;
static const NSTimeInterval AnimationTime = 0.3f ;    //动画时间
static const NSString * DefaultMessage = @"加载中...";



@implementation MBProgressHUD (HUD)

#pragma mark -
#pragma mark-------------------- Tip ----------------------------
+ (MBProgressHUD*)createTipviewWithMessage:(NSString*)message isWindiw:(BOOL)isWindow
{
    UIView  *view = isWindow? (UIView*)[UIApplication sharedApplication].delegate.window:[self getCurrentUIVC].view;
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.detailsLabel.text = message?message:DefaultMessage;
    hud.detailsLabel.font = [UIFont systemFontOfSize:14];
    hud.removeFromSuperViewOnHide = true;
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.animationType = MBProgressHUDAnimationZoom;
    hud.margin = 12.5f;

    return hud;
}

+ (void)showTipMessage:(NSString*)message isWindow:(BOOL)isWindow position:(CGPoint)position timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    MBProgressHUD *hud = [self createTipviewWithMessage:message isWindiw:isWindow];
    hud.mode = MBProgressHUDModeText;
    hud.completionBlock = completion;
    hud.offset = position;
    [hud hideAnimated:true afterDelay:aTimer];
}

+ (MBProgressHUD*)createTipviewWithMessage:(NSString*)message anchorView:(UIView *)anchorView
{
    UIView  *view = anchorView;
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.detailsLabel.text = message?message:DefaultMessage;
    hud.detailsLabel.font = [UIFont systemFontOfSize:14];
    hud.removeFromSuperViewOnHide = true;
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    hud.animationType = MBProgressHUDAnimationZoom;
    hud.margin = 12.5f;

    return hud;
}

+ (void)showTipMessage:(NSString*)message anchorView:(UIView *)anchorView position:(CGPoint)position timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    MBProgressHUD *hud = [self createTipviewWithMessage:message anchorView:anchorView];
    hud.mode = MBProgressHUDModeText;
    hud.completionBlock = completion;
    hud.offset = position;
    [hud hideAnimated:true afterDelay:aTimer];
}
#pragma mark-------------------- show Tip----------------------------

+ (void)showTipMessageInWindow:(NSString*)message
{
    [self showTipMessage:message isWindow:true position:CGPointZero timer:TipMessageDefaultDuration completionBlock:nil];
}

+ (void)showTipMessageInView:(NSString*)message
{
    [self showTipMessage:message isWindow:false position:CGPointZero timer:TipMessageDefaultDuration completionBlock:nil];
}

+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message
{
    [self showTipMessage:message anchorView:anchorView position:CGPointZero timer:TipMessageDefaultDuration completionBlock:nil];
}

+ (void)showTipMessageInWindow:(NSString*)message timer:(int)aTimer
{
    [self showTipMessage:message isWindow:true position:CGPointZero timer:aTimer completionBlock:nil];
}

+ (void)showTipMessageInView:(NSString*)message timer:(int)aTimer
{
    [self showTipMessage:message isWindow:false position:CGPointZero timer:aTimer completionBlock:nil];
}

+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer
{
    [self showTipMessage:message anchorView:anchorView position:CGPointZero timer:aTimer completionBlock:nil];
}

+ (void)showTipMessageInWindow:(NSString*)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showTipMessage:message isWindow:true position:CGPointZero timer:aTimer completionBlock:completion];
}

+ (void)showTipMessageInView:(NSString*)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showTipMessage:message isWindow:false position:CGPointZero timer:aTimer completionBlock:completion];
}

+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showTipMessage:message anchorView:anchorView position:CGPointZero timer:aTimer completionBlock:completion];
}

+ (void)showTipMessageInWindow:(NSString*)message position:(CGPoint)position
{
    [self showTipMessage:message isWindow:false position:position timer:TipMessageDefaultDuration completionBlock:nil];
}

+ (void)showTipMessageInView:(NSString*)message position:(CGPoint)position
{
    [self showTipMessage:message isWindow:true position:position timer:TipMessageDefaultDuration completionBlock:nil];
}

+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message position:(CGPoint)position
{
    [self showTipMessage:message anchorView:anchorView position:position timer:TipMessageDefaultDuration completionBlock:nil];
}

+ (void)showTipMessageInWindow:(NSString*)message position:(CGPoint)position timer:(int)aTimer
{
    [self showTipMessage:message isWindow:false position:position timer:aTimer completionBlock:nil];
}

+ (void)showTipMessageInView:(NSString*)message position:(CGPoint)position timer:(int)aTimer
{
    [self showTipMessage:message isWindow:true position:position timer:aTimer completionBlock:nil];
}

+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message position:(CGPoint)position timer:(int)aTimer
{
    [self showTipMessage:message anchorView:anchorView position:position timer:aTimer completionBlock:nil];
}

+ (void)showTipMessageInWindow:(NSString*)message position:(CGPoint)position timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showTipMessage:message isWindow:false position:position timer:aTimer completionBlock:completion];
}

+ (void)showTipMessageInView:(NSString*)message position:(CGPoint)position timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showTipMessage:message isWindow:true position:position timer:aTimer completionBlock:completion];
}

+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message position:(CGPoint)position timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showTipMessage:message anchorView:anchorView position:position timer:aTimer completionBlock:completion];
}

#pragma mark -
#pragma mark-------------------- Activity ----------------------------
+ (MBProgressHUD*)createMBProgressHUDviewWithMessage:(NSString*)message isWindiw:(BOOL)isWindow
{
    UIView  *view = isWindow? (UIView*)[UIApplication sharedApplication].delegate.window:[self getCurrentUIVC].view;
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message?message:DefaultMessage;
    hud.label.font = [UIFont systemFontOfSize:15];
    hud.removeFromSuperViewOnHide = true;
    hud.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.1f];
    hud.animationType = MBProgressHUDAnimationFade;

    return hud;
}

+ (void)showActivityMessage:(NSString*)message isWindow:(BOOL)isWindow timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    MBProgressHUD *hud = [self createMBProgressHUDviewWithMessage:message isWindiw:isWindow];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.completionBlock = completion;
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    if (aTimer>0) {
        [hud hideAnimated:true afterDelay:aTimer];
    }
}

+ (void)showCustomIcon:(NSString *)iconName message:(NSString *)message isWindow:(BOOL)isWindow timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    MBProgressHUD *hud  =  [self createMBProgressHUDviewWithMessage:message isWindiw:isWindow];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:iconName]];
    hud.mode = MBProgressHUDModeCustomView;
    hud.completionBlock = completion;
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    [hud hideAnimated:true afterDelay:aTimer];
}

+ (void)showAnimationImages:(NSArray<NSString *> *)imageNames message:(NSString *)message isWindow:(BOOL)isWindow timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    NSAssert(imageNames, @"you should set a image name array!") ;
    MBProgressHUD *hud  =  [self createMBProgressHUDviewWithMessage:message isWindiw:isWindow];
    UIImageView * ivAnimations = [[UIImageView alloc] init];
    NSMutableArray<UIImage *> *tempArr = [NSMutableArray arrayWithCapacity:imageNames.count];
    for (NSString * imageName in imageNames)
    {
        UIImage *image = [UIImage imageNamed:imageName];
        [tempArr addObject:image];
    }
    ivAnimations.animationImages = tempArr;
    ivAnimations.animationDuration = AnimationTime;
    [ivAnimations startAnimating];
    hud.customView = ivAnimations;
    hud.mode = MBProgressHUDModeCustomView;
    hud.contentColor = [UIColor blackColor];
    hud.bezelView.backgroundColor = [UIColor whiteColor];
    hud.completionBlock = ^{
        if (completion)
        {
            [ivAnimations stopAnimating];
            completion();
        }
    };
    if (aTimer > 0)
    {
        [hud hideAnimated:true afterDelay:aTimer];
    }
}

+ (MBProgressHUD*)createMBProgressHUDviewWithMessage:(NSString*)message anchorView:(UIView *)anchorView
{
    UIView  *view = anchorView;
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message?message:DefaultMessage;
    hud.label.font = [UIFont systemFontOfSize:15];
    hud.removeFromSuperViewOnHide = true;
    hud.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.1f];
    hud.animationType = MBProgressHUDAnimationFade;

    return hud;
}

+ (void)showActivityMessage:(NSString*)message anchorView:(UIView *)anchorView timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    MBProgressHUD *hud = [self createMBProgressHUDviewWithMessage:message anchorView:anchorView];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.completionBlock = completion;
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    if (aTimer>0) {
        [hud hideAnimated:true afterDelay:aTimer];
    }
}

+ (void)showCustomIcon:(NSString *)iconName message:(NSString *)message anchorView:(UIView *)anchorView timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    MBProgressHUD *hud  =  [self createMBProgressHUDviewWithMessage:message anchorView:anchorView];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:iconName]];
    hud.mode = MBProgressHUDModeCustomView;
    hud.completionBlock = completion;
    hud.contentColor = [UIColor whiteColor];
    hud.bezelView.backgroundColor = [UIColor blackColor];
    [hud hideAnimated:true afterDelay:aTimer];
}

+ (void)showAnimationImages:(NSArray<NSString *> *)imageNames message:(NSString *)message anchorView:(UIView *)anchorView timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    NSAssert(imageNames, @"you should set a image name array!") ;
    MBProgressHUD *hud  =  [self createMBProgressHUDviewWithMessage:message anchorView:anchorView];
    UIImageView * ivAnimations = [[UIImageView alloc] init];
    NSMutableArray<UIImage *> *tempArr = [NSMutableArray arrayWithCapacity:imageNames.count];
    for (NSString * imageName in imageNames)
    {
        UIImage *image = [UIImage imageNamed:imageName];
        [tempArr addObject:image];
    }
    ivAnimations.animationImages = tempArr;
    ivAnimations.animationDuration = AnimationTime;
    [ivAnimations startAnimating];
    hud.customView = ivAnimations;
    hud.mode = MBProgressHUDModeCustomView;
    hud.contentColor = [UIColor blackColor];
    hud.bezelView.backgroundColor = [UIColor whiteColor];
    hud.completionBlock = ^{
        if (completion)
        {
            [ivAnimations stopAnimating];
            completion();
        }
    };
    if (aTimer > 0)
    {
        [hud hideAnimated:true afterDelay:aTimer];
    }
}
#pragma mark-------------------- show Activity Always----------------------------

+ (void)showActivityMessageInWindow:(NSString*)message
{
    [self showActivityMessage:message isWindow:true timer:0 completionBlock:nil];
}

+ (void)showActivityMessageInView:(NSString*)message
{
    [self showActivityMessage:message isWindow:false timer:0 completionBlock:nil];
}

+ (void)showActivityMessageInAnchorView:(UIView *)anchorView message:(NSString *)message
{
    [self showActivityMessage:message anchorView:anchorView timer:0 completionBlock:nil];
}

+ (void)showActivityMessageWithCustomeImageInWindow:(NSString *)message imageName:(NSString *)imageName
{
    [self showCustomIcon:imageName message:message isWindow:true timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showActivityMessageWithCustomeImageInView:(NSString *)message imageName:(NSString *)imageName
{
    [self showCustomIcon:imageName message:message isWindow:false timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showActivityMessageWithCustomeImageInAnchorView:(UIView *)anchorView message:(NSString *)message imageName:(NSString *)imageName
{
    [self showCustomIcon:imageName message:message anchorView:anchorView timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showActivityMessageWithAnimationImagesInWindow:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames
{
    [self showAnimationImages:imageNames message:message isWindow:true timer:0 completionBlock:nil];
}

+ (void)showActivityMessageWithAnimationImagesInView:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames
{
    [self showAnimationImages:imageNames message:message isWindow:false timer:0 completionBlock:nil];
}

+ (void)showActivityMessageWithAnimationImagesInAnchorView:(UIView *)anchorView message:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames
{
    [self showAnimationImages:imageNames message:message anchorView:anchorView timer:0 completionBlock:nil];
}

#pragma mark--------------------show Activity aTimer----------------------------
+ (void)showActivityMessageInWindow:(NSString*)message timer:(int)aTimer
{
    [self showActivityMessage:message isWindow:true timer:aTimer completionBlock:nil];
}

+ (void)showActivityMessageInView:(NSString*)message timer:(int)aTimer
{
    [self showActivityMessage:message isWindow:false timer:aTimer completionBlock:nil];
}

+ (void)showActivityMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer
{
    [self showActivityMessage:message anchorView:anchorView timer:aTimer completionBlock:nil];
}

+ (void)showActivityMessageWithCustomeImageInWindow:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer
{
    [self showCustomIcon:imageName message:message isWindow:true timer:aTimer completionBlock:nil];
}

+ (void)showActivityMessageWithCustomeImageInView:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer
{
    [self showCustomIcon:imageName message:message isWindow:false timer:aTimer completionBlock:nil];
}

+ (void)showActivityMessageWithCustomeImageInAnchorView:(UIView *)anchorView message:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer
{
    [self showCustomIcon:imageName message:message anchorView:anchorView timer:aTimer completionBlock:nil];
}

+ (void)showActivityMessageWithAnimationImagesInWindow:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer
{
    [self showAnimationImages:imageNames message:message isWindow:true timer:aTimer completionBlock:nil];
}

+ (void)showActivityMessageWithAnimationImagesInView:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer
{
    [self showAnimationImages:imageNames message:message isWindow:false timer:aTimer completionBlock:nil];
}

+ (void)showActivityMessageWithAnimationImagesInAnchorView:(UIView *)anchorView message:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer
{
    [self showAnimationImages:imageNames message:message anchorView:anchorView timer:aTimer completionBlock:nil];
}
#pragma mark--------------------show Activity aTimer With CallBack----------------------------
+ (void)showActivityMessageInWindow:(NSString*)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showActivityMessage:message isWindow:true timer:aTimer completionBlock:completion];
}

+ (void)showActivityMessageInView:(NSString*)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showActivityMessage:message isWindow:false timer:aTimer completionBlock:completion];
}

+ (void)showActivityMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showActivityMessage:message anchorView:anchorView timer:aTimer completionBlock:completion];
}

+ (void)showActivityMessageWithCustomeImageInWindow:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:imageName message:message isWindow:true timer:aTimer completionBlock:completion];
}

+ (void)showActivityMessageWithCustomeImageInView:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:imageName message:message isWindow:false timer:aTimer completionBlock:completion];
}

+ (void)showActivityMessageWithCustomeImageInAnchorView:(UIView *)anchorView message:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:imageName message:message anchorView:anchorView timer:aTimer completionBlock:completion];
}

+ (void)showActivityMessageWithAnimationImagesInWindow:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showAnimationImages:imageNames message:message isWindow:true timer:aTimer completionBlock:completion];
}

+ (void)showActivityMessageWithAnimationImagesInView:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showAnimationImages:imageNames message:message isWindow:false timer:aTimer completionBlock:completion];
}

+ (void)showActivityMessageWithAnimationImagesInAnchorView:(UIView *)anchorView message:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showAnimationImages:imageNames message:message anchorView:anchorView timer:aTimer completionBlock:completion];
}

#pragma mark -
#pragma mark--------------------show image for Success----------------------------
+ (void)showSuccessMessageInWindow:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message isWindow:true timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showSuccessMessageInView:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message isWindow:false timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showSuccessMessageInAnchorView:(UIView *)anchorView message:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message anchorView:anchorView timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showSuccessMessageInWindow:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message isWindow:true timer:aTimer completionBlock:nil];
}

+ (void)showSuccessMessageInView:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message isWindow:false timer:aTimer completionBlock:nil];
}

+ (void)showSuccessMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message anchorView:anchorView timer:aTimer completionBlock:nil];
}

+ (void)showSuccessMessageInWindow:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message isWindow:true timer:aTimer completionBlock:completion];
}

+ (void)showSuccessMessageInView:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message isWindow:false timer:aTimer completionBlock:completion];
}

+ (void)showSuccessMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/success" message:message anchorView:anchorView timer:aTimer completionBlock:completion];
}
#pragma mark-------------------- show image for Error----------------------------

+ (void)showErrorMessageInWindow:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message isWindow:true timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showErrorMessageInView:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message isWindow:false timer:ImageMessageDefaultDuration completionBlock:nil];

}

+ (void)showErrorMessageInAnchorView:(UIView *)anchorView message:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message anchorView:anchorView timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showErrorMessageInWindow:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message isWindow:true timer:aTimer completionBlock:nil];
}

+ (void)showErrorMessageInView:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message isWindow:false timer:aTimer completionBlock:nil];
}

+ (void)showErrorMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message anchorView:anchorView timer:aTimer completionBlock:nil];
}

+ (void)showErrorMessageInWindow:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message isWindow:true timer:aTimer completionBlock:completion];
}

+ (void)showErrorMessageInView:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message isWindow:false timer:aTimer completionBlock:completion];
}

+ (void)showErrorMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/error" message:message anchorView:anchorView timer:aTimer completionBlock:completion];
}

#pragma mark-------------------- show image for Information----------------------------
+ (void)showInfoMessageInWindow:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message isWindow:true timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showInfoMessageInView:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message isWindow:false timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showInfoMessageInAnchorView:(UIView *)anchorView message:(NSString *)message
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message anchorView:anchorView timer:ImageMessageDefaultDuration completionBlock:nil];
}

+ (void)showInfoMessageInWindow:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message isWindow:true timer:aTimer completionBlock:nil];
}

+ (void)showInfoMessageInView:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message isWindow:false timer:aTimer completionBlock:nil];
}

+ (void)showInfoMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message anchorView:anchorView timer:aTimer completionBlock:nil];
}

+ (void)showInfoMessageInWindow:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message isWindow:true timer:aTimer completionBlock:completion];
}

+ (void)showInfoMessageInView:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message isWindow:false timer:aTimer completionBlock:completion];
}

+ (void)showInfoMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion
{
    [self showCustomIcon:@"MBProgressHUD+HUD.bundle/info" message:message anchorView:anchorView timer:aTimer completionBlock:completion];
}

#pragma mark -
#pragma mark-------------------- hide HUD----------------------------

+ (void)hideHUD
{
    UIView  *winView =(UIView*)[UIApplication sharedApplication].delegate.window;
    [self hideHUDForView:winView animated:YES];
    [self hideHUDForView:[self getCurrentUIVC].view animated:YES];
}

+(void)hideHUDForAnchorView:(UIView *)anchorView
{
    [self hideHUDForView:anchorView animated:YES];
}


//获取当前屏幕显示的viewcontroller
+(UIViewController *)getCurrentWindowVC
{
    UIViewController *result = nil;
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tempWindow in windows)
        {
            if (tempWindow.windowLevel == UIWindowLevelNormal)
            {
                window = tempWindow;
                break;
            }
        }
    }
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]])
    {
        result = nextResponder;
    }
    else
    {
        result = window.rootViewController;
    }
    return  result;
}

+(UIViewController *)getCurrentUIVC
{
    UIViewController  *superVC = [[self class]  getCurrentWindowVC ];

    if ([superVC isKindOfClass:[UITabBarController class]]) {

        UIViewController  *tabSelectVC = ((UITabBarController*)superVC).selectedViewController;

        if ([tabSelectVC isKindOfClass:[UINavigationController class]]) {

            return ((UINavigationController*)tabSelectVC).viewControllers.lastObject;
        }
        return tabSelectVC;
    }else
        if ([superVC isKindOfClass:[UINavigationController class]]) {

            return ((UINavigationController*)superVC).viewControllers.lastObject;
        }
    return superVC;
}

@end
