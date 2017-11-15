//
//  CommonTool.m
//  ForCast
//
//  Created by zw on 2017/11/11.
//  Copyright © 2017年 zhangwei. All rights reserved.
//

#import "CommonTool.h"

@implementation CommonTool

+(int)getRandomNumber:(int)from to:(int)to
{
    return (int)(from + (arc4random() % (to - from + 1)));
}

@end
