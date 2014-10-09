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

+ (NSArray *)weightNumbers
{
    return @[@5,@4,@3,@2,@7,@6,@5,@4,@3,@2];
}

- (instancetype)initWithString:(NSString *)string
{
	self = [super init];
    if (!self) return nil;

    self.accountNumber = string;

    return self;
}

- (BOOL)isValid
{
    BOOL valid = NO;

    return valid;
}

- (NSString *)controlNumberString
{
    if (self.accountNumber.length != 11) return nil;

	NSString *substring = [self.accountNumber substringFromIndex:10];

    return substring;
}

- (NSUInteger)controlNumber
{
    NSString *controlNumberString = self.controlNumberString;

    if (!controlNumberString) return 0;

	return [self.controlNumberString intValue];
}

@end
