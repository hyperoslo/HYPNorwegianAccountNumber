//
//  HYPAccountNumberTests.m
//  HYPAccountNumberTests
//
//  Created by Christoffer Winterkvist on 10/9/14.
//
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "HYPNorwegianAccountNumber.h"

static NSString * HYPAccountNumberSubject = @"11111111111";

@interface HYPAccountNumberTests : XCTestCase

@property (nonatomic, strong) HYPNorwegianAccountNumber *accountNumber;

@end

@implementation HYPAccountNumberTests

- (void)setUp {
    [super setUp];
    self.accountNumber = [[HYPNorwegianAccountNumber alloc] initWithString:HYPAccountNumberSubject];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testControlNumber {
	NSString *lastCharacter = [HYPAccountNumberSubject substringWithRange:NSMakeRange(HYPAccountNumberSubject.length-1, 1)];
    NSUInteger control = (unsigned)[lastCharacter integerValue];

    XCTAssert(self.accountNumber.controlNumber == control, @"Found control number");
}

- (void)testAuthenticity
{
    XCTAssert(self.accountNumber.isValid, @"Account number is valid");
}

@end
