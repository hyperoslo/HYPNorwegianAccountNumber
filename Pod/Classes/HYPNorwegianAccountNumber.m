//
//  HYPNorwegianAccountNumber.m
//  HYPNorwegianAccountNumber
//
//  Created by Christoffer Winterkvist on 10/9/14.
//  Copyright (c) 2014 Christoffer Winterkvist. All rights reserved.
//

#import "HYPNorwegianAccountNumber.h"

@interface HYPNorwegianAccountNumber ()

@property (nonatomic, strong) NSString *accountNumber;

@end

@implementation HYPNorwegianAccountNumber

- (instancetype)initWithString:(NSString *)string
{
	self = [super init];
    if (!self) return nil;

    self.accountNumber = string;

    return self;
}

@end
