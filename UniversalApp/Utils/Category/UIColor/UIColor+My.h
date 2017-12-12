//
//  UIColor+My.h
//  MyKit
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIColor(My)

+ (UIColor *)colorWithMyHex:(UInt32)hex;
+ (UIColor *)colorWithMyHex:(UInt32)hex andAlpha:(CGFloat)alpha;

/**
 *   用HexString 生成 UIColor
 *
 *  @param hexString   #RGB  #ARGB   #RRGGBB  #AARRGGBB 或者不带#
 */
+ (UIColor *)colorWithMyHexString:(NSString *)hexString;
/**
 *  当前UIColor用的HexString
 */
- (NSString *)MyHEXString;
/**
 *  当前UIColor用的RGB(255,255,255,1.0) 用纯数字
 */
+ (UIColor *)colorWithMyWholeRed:(CGFloat)red
                         green:(CGFloat)green
                          blue:(CGFloat)blue
                         alpha:(CGFloat)alpha;


/**
 *  @brief  随机颜色
 *
 *  @return UIColor
 */
+ (UIColor *)RandomColor;

/**
 *  @brief  渐变颜色
 *
 *  @param c1     开始颜色
 *  @param c2     结束颜色
 *  @param height 渐变高度
 *
 *  @return 渐变颜色
 */
+ (UIColor*)gradientFromColor:(UIColor*)c1 toColor:(UIColor*)c2 withHeight:(int)height;


@end
