//
//  FileCommonUtil.m
//  Mp3Encoder
//
//  Created by tomxiang on 2018/9/12.
//  Copyright © 2018年 tomxiang. All rights reserved.
//

#import "FileCommonUtil.h"

@implementation FileCommonUtil

+ (NSString *)bundlePath:(NSString *)fileName {
    return [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:fileName];
}

+ (NSString *)documentsPath:(NSString *)fileName {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:fileName];
}

@end
