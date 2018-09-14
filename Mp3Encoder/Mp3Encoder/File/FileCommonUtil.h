//
//  FileCommonUtil.h
//  Mp3Encoder
//
//  Created by tomxiang on 2018/9/12.
//  Copyright © 2018年 tomxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileCommonUtil : NSObject

+ (NSString *)bundlePath:(NSString *)fileName;

+ (NSString *)documentsPath:(NSString *)fileName;

@end
