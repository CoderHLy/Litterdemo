//
//  CommonDefine.h
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#ifndef CommonDefine_h
#define CommonDefine_h
//根据rgb获得颜色
#define Color(r,g,b) [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:1.0]

//约束控件时，不需要再写完整的"MAS.top"语句
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS

#define SCREENWIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREENHEIGHT [[UIScreen mainScreen] bounds].size.height

#endif /* CommonDefine_h */
