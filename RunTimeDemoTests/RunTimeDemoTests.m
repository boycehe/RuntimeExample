//
//  RunTimeDemoTests.m
//  RunTimeDemoTests
//
//  Created by gewara on 2017/7/25.
//  Copyright © 2017年 gewara. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RuntimeExample.h"
#import "TestRunObj.h"

@interface RunTimeDemoTests : XCTestCase

@end

@implementation RunTimeDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    RuntimeExample *example = [RuntimeExample new];
    
    NSLog(@"class name:%@",[example getSuperClassName:[TestRunObj class]]);
    
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
