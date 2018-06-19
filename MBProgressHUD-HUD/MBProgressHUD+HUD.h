//
//  MBProgressHUD+HUD.h
//  MBProgressHUD
//
//  Created by careland on 2018/6/15.
//  Copyright © 2018年 careland. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (HUD)

#pragma mark -
#pragma mark -------------------- show Tip----------------------------
/**
 添加简短提示信息到Window层上 默认TipMessageDefaultDuration秒后提示自动消失

 @param message 提示信息
 */
+ (void)showTipMessageInWindow:(NSString*)message;

/**
 添加简短提示信息到当前展示的控制器的根View上 默认TipMessageDefaultDuration秒后提示自动消失

 @param message 提示信息
 */
+ (void)showTipMessageInView:(NSString*)message;

/**
 添加简短提示信息到自定义的View上 默认TipMessageDefaultDuration秒后提示自动消失

 @param anchorView 自定义的View
 @param message 提示信息
 */
+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message;


/**
 添加简短提示信息到Window层上 aTimer秒后提示自动消失

 @param message 提示信息
 @param aTimer aTimer秒后提示自动消失
 */
+ (void)showTipMessageInWindow:(NSString*)message timer:(int)aTimer;

/**
 添加简短提示信息到当前展示的控制器的根View上 aTimer秒后提示自动消失

 @param message 提示信息
 @param aTimer aTimer秒后提示自动消失
 */
+ (void)showTipMessageInView:(NSString*)message timer:(int)aTimer;

/**
 添加简短提示信息到自定义的View上 aTimer秒后提示自动消失

 @param anchorView 自定义的View
 @param message 提示信息
 @param aTimer aTimer秒后提示自动消失
 */
+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer;


/**
 添加简短提示信息到Window层上 aTimer秒后提示自动消失 提示消失时回调

 @param message 提示信息
 @param aTimer aTimer秒后提示自动消失
 @param completion 提示消失回调
 */
+ (void)showTipMessageInWindow:(NSString*)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加简短提示信息到当前展示的控制器的根View上 aTimer秒后提示自动消失 提示消失时回调

 @param message 提示信息
 @param aTimer aTimer秒后提示自动消失
 @param completion 提示消失回调
 */
+ (void)showTipMessageInView:(NSString*)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加简短提示信息到自定义的View上 aTimer秒后提示自动消失 提示消失时回调

 @param anchorView 自定义的View
 @param message 提示信息
 @param aTimer aTimer秒后提示自动消失
 @param completion 提示消失回调
 */
+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;


/**
 添加简短提示信息到Window层上自定义位置 默认TipMessageDefaultDuration秒后提示自动消失

 @param message 提示信息
 @param position 自定义位置
 */
+ (void)showTipMessageInWindow:(NSString*)message position:(CGPoint)position;

/**
 添加简短提示信息到当前展示的控制器的根View上自定义位置 默认TipMessageDefaultDuration秒后提示自动消失

 @param message 提示信息
 @param position 自定义位置
 */
+ (void)showTipMessageInView:(NSString*)message position:(CGPoint)position;

/**
 添加简短提示信息到自定义的View上自定义位置 默认TipMessageDefaultDuration秒后提示自动消失

 @param anchorView 自定义的View
 @param message 提示信息
 @param position 自定义位置
 */
+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message position:(CGPoint)position;


/**
  添加简短提示信息到Window层上自定义位置 aTimer秒后提示自动消失

 @param message 提示信息
 @param position 自定义位置
 @param aTimer aTimer秒后提示自动消失
 */
+ (void)showTipMessageInWindow:(NSString*)message position:(CGPoint)position timer:(int)aTimer;

/**
 添加简短提示信息到当前展示的控制器的根View上自定义位置 aTimer秒后提示自动消失

 @param message 提示信息
 @param position 自定义位置
 @param aTimer aTimer秒后提示自动消失
 */
+ (void)showTipMessageInView:(NSString*)message position:(CGPoint)position timer:(int)aTimer;

/**
 添加简短提示信息到自定义的View上自定义位置 aTimer秒后提示自动消失

 @param anchorView 自定义的View
 @param message 提示信息
 @param position 自定义位置
 @param aTimer aTimer秒后提示自动消失
 */
+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message position:(CGPoint)position timer:(int)aTimer;


/**
 添加简短提示信息到Window层上自定义位置 aTimer秒后提示自动消失 提示消失时回调

 @param message 提示信息
 @param position 自定义位置
 @param aTimer aTimer秒后提示自动消失
 @param completion 提示消失回调
 */
+ (void)showTipMessageInWindow:(NSString*)message position:(CGPoint)position timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
添加简短提示信息到当前展示的控制器的根View上自定义位置 aTimer秒后提示自动消失 提示消失时回调

 @param message 提示信息
 @param position 自定义位置
 @param aTimer aTimer秒后提示自动消失
 @param completion 提示消失回调
 */
+ (void)showTipMessageInView:(NSString*)message position:(CGPoint)position timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加简短提示信息到到自定义的View上自定义位置 aTimer秒后提示自动消失 提示消失时回调

 @param anchorView 自定义的View
 @param message 提示信息
 @param position 自定义位置
 @param aTimer aTimer秒后提示自动消失
 @param completion 示消失回调
 */
+ (void)showTipMessageInAnchorView:(UIView *)anchorView message:(NSString *)message position:(CGPoint)position timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

#pragma mark -
#pragma mark-------------------- show Activity Always----------------------------

/**
 添加Activity HUD到Window层上，不会自动消失

 @param message 提示文本
 */
+ (void)showActivityMessageInWindow:(NSString*)message;

/**
 添加Activity HUD到当前展示的控制器的根View上，不会自动消失

 @param message 提示文本
 */
+ (void)showActivityMessageInView:(NSString*)message;

/**
 添加Activity HUD到自定义的View上，不会自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 */
+ (void)showActivityMessageInAnchorView:(UIView *)anchorView message:(NSString *)message;


/**
 添加带图片的Activity HUD到Window层上，ImageMessageDefaultDuration秒后自动消失

 @param message 提示文本
 @param imageName 图片名称
 */
+ (void)showActivityMessageWithCustomeImageInWindow:(NSString *)message imageName:(NSString *)imageName;

/**
 添加带图片的Activity HUD到当前展示的控制器的根View上，ImageMessageDefaultDuration秒后自动消失

 @param message 提示文本
 @param imageName 图片名称
 */
+ (void)showActivityMessageWithCustomeImageInView:(NSString *)message imageName:(NSString *)imageName;

/**
 添加带图片的Activity HUD到自定义的View上，ImageMessageDefaultDuration秒后自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 @param imageName 图片名称
 */
+ (void)showActivityMessageWithCustomeImageInAnchorView:(UIView *)anchorView message:(NSString *)message imageName:(NSString *)imageName;


/**
 添加带动画图片的Activity HUD到Window层上，不会自动消失

 @param message 提示文本
 @param imageNames 动画图片名称列表
 */
+ (void)showActivityMessageWithAnimationImagesInWindow:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames;

/**
  添加带动画图片的Activity HUD到当前展示的控制器的根View上，不会自动消失

 @param message 提示文本
 @param imageNames 动画图片名称列表
 */
+ (void)showActivityMessageWithAnimationImagesInView:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames;

/**
 添加带动画图片的Activity HUD到自定义的View上，不会自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 @param imageNames 动画图片名称列表
 */
+ (void)showActivityMessageWithAnimationImagesInAnchorView:(UIView *)anchorView message:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames;

#pragma mark--------------------show Activity aTimer----------------------------

/**
 添加Activity HUD到Window层上，aTimer秒后自动消失

 @param message 提示文本
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageInWindow:(NSString*)message timer:(int)aTimer;

/**
 添加Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失

 @param message 提示文本
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageInView:(NSString*)message timer:(int)aTimer;

/**
 添加Activity HUD到自定义的View上，aTimer秒后自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer;


/**
 添加带图片的Activity HUD到Window层上，aTimer秒后自动消失

 @param message 提示文本
 @param imageName 图片名称
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageWithCustomeImageInWindow:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer;

/**
 添加带图片的Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失

 @param message 提示文本
 @param imageName 图片名称
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageWithCustomeImageInView:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer;

/**
 添加带图片的Activity HUD到自定义的View上，aTimer秒后自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 @param imageName 图片名称
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageWithCustomeImageInAnchorView:(UIView *)anchorView message:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer;


/**
 添加带动画图片的Activity HUD到Window层上，aTimer秒后自动消失

 @param message 提示文本
 @param imageNames 动画图片名称列表
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageWithAnimationImagesInWindow:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer;

/**
  添加带动画图片的Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失

 @param message 提示文本
 @param imageNames 动画图片名称列表
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageWithAnimationImagesInView:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer;

/**
 添加带动画图片的Activity HUD到自定义的View上，aTimer秒后自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 @param imageNames 动画图片名称列表
 @param aTimer aTimer秒后Activity HUD自动消失
 */
+ (void)showActivityMessageWithAnimationImagesInAnchorView:(UIView *)anchorView message:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer;

#pragma mark--------------------show Activity aTimer With CallBack----------------------------

/**
 添加Activity HUD到Window层上，aTimer秒后自动消失，Activity HUD消失时回调

 @param message 提示文本
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageInWindow:(NSString*)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失，Activity HUD消失时回调

 @param message 提示文本
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageInView:(NSString*)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加Activity HUD到自定义的View上，aTimer秒后自动消失，Activity HUD消失时回调

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;


/**
 添加带图片的Activity HUD到Window层上，aTimer秒后自动消失，Activity HUD消失时回调

 @param message 提示文本
 @param imageName 图片名称
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageWithCustomeImageInWindow:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加带图片的Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失，Activity HUD消失时回调

 @param message 提示文本
 @param imageName 图片名称
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageWithCustomeImageInView:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加带图片的Activity HUD到自定义的View上，aTimer秒后自动消失，Activity HUD消失时回调

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageWithCustomeImageInAnchorView:(UIView *)anchorView message:(NSString *)message imageName:(NSString *)imageName timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;


/**
 添加带动画图片的Activity HUD到Window层上，aTimer秒后自动消失，Activity HUD消失时回调

 @param message 提示文本
 @param imageNames 动画图片名称列表
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageWithAnimationImagesInWindow:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加带动画图片的Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失，Activity HUD消失时回调

 @param message 提示文本
 @param imageNames 动画图片名称列表
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageWithAnimationImagesInView:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加带动画图片的Activity HUD到自定义的View上，aTimer秒后自动消失，Activity HUD消失时回调

 @param anchorView 自定义的View
 @param message 提示文本
 @param imageNames 动画图片名称列表
 @param aTimer aTimer秒后Activity HUD自动消失
 @param completion Activity HUD消失回调
 */
+ (void)showActivityMessageWithAnimationImagesInAnchorView:(UIView *)anchorView message:(NSString *)message animationImageNames:(NSArray<NSString *> *)imageNames timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

#pragma mark -
#pragma mark--------------------show image for Success----------------------------

/**
 添加Success Activity HUD到Window层上，ImageMessageDefaultDuration秒后自动消失

 @param message 提示文本
 */
+ (void)showSuccessMessageInWindow:(NSString *)message;

/**
 添加Success Activity HUD到当前展示的控制器的根View上，ImageMessageDefaultDuration秒后自动消失

 @param message 提示文本
 */
+ (void)showSuccessMessageInView:(NSString *)message;

/**
 添加Success Activity HUD到自定义的View上，ImageMessageDefaultDuration秒后自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 */
+ (void)showSuccessMessageInAnchorView:(UIView *)anchorView message:(NSString *)message;


/**
 添加Success Activity HUD到Window层上，aTimer秒后Success Activity HUD自动消失

 @param message 提示文本
 @param aTimer aTimer秒后Success Activity HUD自动消失
 */
+ (void)showSuccessMessageInWindow:(NSString *)message timer:(int)aTimer;

/**
 添加Success Activity HUD到当前展示的控制器的根View上，aTimer秒后Success Activity HUD自动消失

 @param message 提示文本
 @param aTimer aTimer秒后Success Activity HUD自动消失
 */
+ (void)showSuccessMessageInView:(NSString *)message timer:(int)aTimer;

/**
 添加Success Activity HUD到自定义的View上，aTimer秒后Success Activity HUD自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Success Activity HUD自动消失
 */
+ (void)showSuccessMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer;


/**
 添加Success Activity HUD到Window层上，aTimer秒后自动消失，Success Activity HUD消失时回调

 @param message 提示文本
 @param aTimer aTimer秒后Success Activity HUD自动消失
 @param completion Success Activity HUD消失回调
 */
+ (void)showSuccessMessageInWindow:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加Success Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失，Success Activity HUD消失时回调

 @param message 提示文本
 @param aTimer aTimer秒后Success Activity HUD自动消失
 @param completion Success Activity HUD消失回调
 */
+ (void)showSuccessMessageInView:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
  添加Success Activity HUD到自定义的View上，aTimer秒后Success Activity HUD自动消失，Success Activity HUD消失时回调

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Success Activity HUD自动消失
 @param completion Success Activity HUD消失回调
 */
+ (void)showSuccessMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

#pragma mark-------------------- show image for Error----------------------------

/**
 添加Error Activity HUD到Window层上，ImageMessageDefaultDuration秒后自动消失

 @param message 提示文本
 */
+ (void)showErrorMessageInWindow:(NSString *)message;

/**
 添加Error Activity HUD到当前展示的控制器的根View上，ImageMessageDefaultDuration秒后自动消失

 @param message 提示文本
 */
+ (void)showErrorMessageInView:(NSString *)message;

/**
 添加Error Activity HUD到自定义的View上，ImageMessageDefaultDuration秒后自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 */
+ (void)showErrorMessageInAnchorView:(UIView *)anchorView message:(NSString *)message;

/**
 添加Error Activity HUD到Window层上，aTimer秒后Error Activity HUD自动消失

 @param message 提示文本
 @param aTimer aTimer秒后Error Activity HUD自动消失
 */
+ (void)showErrorMessageInWindow:(NSString *)message timer:(int)aTimer;

/**
 添加Error Activity HUD到当前展示的控制器的根View上，aTimer秒后Error Activity HUD自动消失

 @param message 提示文本
 @param aTimer aTimer秒后Success Activity HUD自动消失
 */
+ (void)showErrorMessageInView:(NSString *)message timer:(int)aTimer;

/**
 添加Error Activity HUD到当前展示的控制器的根View上，aTimer秒后Error Activity HUD自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Error Activity HUD自动消失
 */
+ (void)showErrorMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer;


/**
 添加Error Activity HUD到Window层上，aTimer秒后自动消失，Error Activity HUD消失时回调

 @param message 提示文本
 @param aTimer aTimer秒后Error Activity HUD自动消失
 @param completion Error Activity HUD消失回调
 */
+ (void)showErrorMessageInWindow:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加Error Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失，Error Activity HUD消失时回调

 @param message 提示文本
 @param aTimer aTimer秒后Error Activity HUD自动消失
 @param completion Error Activity HUD消失回调
 */
+ (void)showErrorMessageInView:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加Error Activity HUD到自定义的View上，aTimer秒后Error Activity HUD自动消失，Error Activity HUD消失时回调

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Error Activity HUD自动消失
 @param completion Error Activity HUD消失回调
 */
+ (void)showErrorMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

#pragma mark-------------------- show image for Information----------------------------

/**
 添加Info Activity HUD到Window层上，ImageMessageDefaultDuration秒后自动消失

 @param message 提示文本
 */
+ (void)showInfoMessageInWindow:(NSString *)message;

/**
 添加Info Activity HUD到当前展示的控制器的根View上，ImageMessageDefaultDuration秒后自动消失

 @param message 提示文本
 */
+ (void)showInfoMessageInView:(NSString *)message;

/**
 添加Info Activity HUD到自定义的View上，ImageMessageDefaultDuration秒后自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 */
+ (void)showInfoMessageInAnchorView:(UIView *)anchorView message:(NSString *)message;


/**
 添加Info Activity HUD到Window层上，aTimer秒后Info Activity HUD自动消失

 @param message 提示文本
 @param aTimer aTimer秒后Info Activity HUD自动消失
 */
+ (void)showInfoMessageInWindow:(NSString *)message timer:(int)aTimer;

/**
 添加Info Activity HUD到当前展示的控制器的根View上，aTimer秒后Info Activity HUD自动消失

 @param message 提示文本
 @param aTimer aTimer秒后Info Activity HUD自动消失
 */
+ (void)showInfoMessageInView:(NSString *)message timer:(int)aTimer;

/**
 添加Info Activity HUD到当前展示的控制器的根View上，aTimer秒后Info Activity HUD自动消失

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Info Activity HUD自动消失
 */
+ (void)showInfoMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer;


/**
 添加Info Activity HUD到Window层上，aTimer秒后自动消失，Info Activity HUD消失时回调

 @param message 提示文本
 @param aTimer aTimer秒后Info Activity HUD自动消失
 @param completion Info Activity HUD消失回调
 */
+ (void)showInfoMessageInWindow:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加Info Activity HUD到当前展示的控制器的根View上，aTimer秒后自动消失，Info Activity HUD消失时回调

 @param message 提示文本
 @param aTimer aTimer秒后Info Activity HUD自动消失
 @param completion Info Activity HUD消失回调
 */
+ (void)showInfoMessageInView:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

/**
 添加Info Activity HUD到自定义的View上，aTimer秒后Info Activity HUD自动消失，Info Activity HUD消失时回调

 @param anchorView 自定义的View
 @param message 提示文本
 @param aTimer aTimer秒后Info Activity HUD自动消失
 @param completion Info Activity HUD消失回调
 */
+ (void)showInfoMessageInAnchorView:(UIView *)anchorView message:(NSString *)message timer:(int)aTimer completionBlock:(MBProgressHUDCompletionBlock)completion;

#pragma mark -
#pragma mark-------------------- hide HUD----------------------------

/**
 隐藏Windows层或当前展示的控制器的根View上展示的HUD
 */
+ (void)hideHUD;

/**
 隐藏自定义的View上展示的HUD

 @param anchorView 自定义的View
 */
+(void)hideHUDForAnchorView:(UIView *)anchorView;



@end
