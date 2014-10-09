//
//  HYPNorwegianAccountNumber.h
//  HYPNorwegianAccountNumber
//
//  Created by Christoffer Winterkvist on 10/9/14.
//  Copyright (c) 2014 Christoffer Winterkvist. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HYPNorwegianAccountNumber : NSObject

+ (NSArray *)weightNumbers;
- (instancetype)initWithString:(NSString *)string;

@end
