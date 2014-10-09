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

    NSUInteger calculateControlNumber = [self calculate:self.accountNumberWithoutControlNumber withWeightNumbers:[HYPNorwegianAccountNumber weightNumbers]];
    calculateControlNumber = 11 - (calculateControlNumber % 11);

    valid = (calculateControlNumber == self.controlNumber);

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

#pragma mark - Private methods

- (NSUInteger)calculate:(NSString *)string withWeightNumbers:(NSArray *)weightNumbers
{
    NSUInteger result = 0;

    for (int index=0; index < string.length; ++index) {
        NSUInteger currentDigit = (NSUInteger)[[string substringWithRange:NSMakeRange(index,1)] integerValue];
        result += [weightNumbers[index] integerValue] * currentDigit;
    }

    return result;
}

- (NSString *)accountNumberWithoutControlNumber
{
	if (self.accountNumber.length != 11) return nil;

    NSString *substring = [self.accountNumber substringToIndex:10];

    return substring;
}

@end
