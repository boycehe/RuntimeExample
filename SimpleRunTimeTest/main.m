//
//  main.m
//  SimpleRunTimeTest
//
//  Created by gewara on 2017/7/27.
//  Copyright © 2017年 gewara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestRunObj.h"
#import "RuntimeExample.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        RuntimeExample *example = [RuntimeExample new];
        
        printf("----%s",[@"name" UTF8String]);
        
        NSLog(@"class name:%@",[example getPropertyWithClass:[TestRunObj class] varName:@"age"]);
        
    }
    return 0;
}
