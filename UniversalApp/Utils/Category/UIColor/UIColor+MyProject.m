//
//  UIColor+MyProject
//  MyProject
//
//  Created by MyKun on 15/12/14.
//  Copyright © 2015年 MyKun. All rights reserved.
//

#import "UIColor+MyProject.h"
#import "UIColor+My.h"

@implementation UIColor(MyProject)


//主题色：绿色
+ (UIColor *)appMainColor{
    return [UIColor colorWithMyHexString:@"#2ba8a8"];
    
}

//小灰色
+ (UIColor *)appAColor{
    return [UIColor colorWithMyHexString:@"#f5f5f4"];
    
}
//黑色
+ (UIColor *)appBColor{
    return [UIColor colorWithMyHexString:@"#333333"];
    
}
//深灰
+ (UIColor *)appCColor{
    return [UIColor colorWithMyHexString:@"#666666"];
    
}
//浅灰
+ (UIColor *)appDColor{
    return [UIColor colorWithMyHexString:@"#e1e1e1"];
    
}

//浅灰
+ (UIColor *)appEColor{
    return [UIColor colorWithMyHexString:@"#f0f0f0"];
    
}
//深黑
+ (UIColor *)appFColor{
    return [UIColor colorWithMyHexString:@"#646464"];
    
}
//浅灰-跟默认提示颜色一样的
+ (UIColor *)appGColor{
    return [UIColor colorWithMyHexString:@"#c8c8c8"];
    
}
//深浅灰
+ (UIColor *)appHColor{
    return [UIColor colorWithMyHexString:@"#999999"];
    
}

//浅蓝
+ (UIColor *)appIColor{
    return [UIColor colorWithMyHexString:@"#50a0e6"];
    
}

+ (UIColor *)appJColor{
    return [UIColor colorWithMyHexString:@"#00B2EE"];
    
}

+ (UIColor *)appKColor{
    return [UIColor colorWithMyHexString:@"#3d8ca5"];
    
}

//导航条颜色
+ (UIColor *)appNavigationBarColor{
    return [UIColor colorWithMyHexString:@"#323542"];//#1aa7f2 2da4f6
}

//app蓝色
+ (UIColor *)appBlueColor{
    return [UIColor colorWithMyHexString:@"#7687f1"];//099fde
}

//app红色
+ (UIColor *)appRedColor{
    return [UIColor colorWithMyHexString:@"#ff415b"];
}

//app黄色
+ (UIColor *)appYellowColor{
    return [UIColor colorWithMyHexString:@"#f7ba5b"];
}


//app橙色
+ (UIColor *)appOrangeColor{
    return [UIColor colorWithMyHexString:@"#ea6644"];
}

//app绿色
+ (UIColor *)appGreenColor{
    return [UIColor colorWithMyHexString:@"#52cbb9"];
}

//app背景色
+ (UIColor *)appBackGroundColor{
    return [UIColor colorWithMyHexString:@"#e6e6e6"];
}

//app直线色
+ (UIColor *)appLineColor{
//    return [UIColor colorWithMyHexString:@"#c8c8c8"];
    return [UIColor colorWithMyHexString:@"#D6D6D6"];
}
//app导航栏文字颜色
+ (UIColor *)appNavTitleColor{
    return [UIColor colorWithMyHexString:@"#013e5d"];
}
//app标题颜色
+ (UIColor *)appTitleColor{
    return [UIColor colorWithMyHexString:@"#474747"];
}

//app文字颜色
+ (UIColor *)appTextColor{
    return [UIColor colorWithMyHexString:@"#A0A0A0"];
}

//app浅红颜色
+ (UIColor *)appLightRedColor{
    return [UIColor colorWithMyHexString:@"#FFB7C1"];
}

//app输入框颜色
+ (UIColor *)appTextFieldColor{
    return [UIColor colorWithMyHexString:@"#FFFFFF"];
}

//app黑色色
+ (UIColor *)appBlackColor{
    return [UIColor colorWithMyHexString:@"#333d47" ];
}
/**
 *  app次分割线
 */
+ (UIColor *)appSecondLineColor{
     return [UIColor colorWithMyHexString:@"#e5e5e5"];
}

@end
