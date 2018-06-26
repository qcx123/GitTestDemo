//
//  NSMutableAttributedString+QCXAttributedString.m
//  GitDemo
//
//  Created by 乔春晓 on 2018/6/26.
//  Copyright © 2018年 乔春晓. All rights reserved.
//

#import "NSMutableAttributedString+QCXAttributedString.h"

@implementation NSMutableAttributedString (QCXAttributedString)

- (NSMutableAttributedString * (^)(NSString *,NSDictionary<NSString *,id> *))add{
    return ^NSMutableAttributedString * (NSString *string, NSDictionary<NSString *,id> *attrDic){
        if (string) {
            [self appendAttributedString:[[NSAttributedString alloc] initWithString:string attributes:attrDic]];
        }
        return self;
    };
}

@end
