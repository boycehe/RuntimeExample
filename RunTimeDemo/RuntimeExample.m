//
//  RuntimeExample.m
//  RunTimeDemo
//
//  Created by gewara on 2017/7/27.
//  Copyright © 2017年 gewara. All rights reserved.
//

#import "RuntimeExample.h"

@implementation RuntimeExample

- (NSString*)getClassName:(Class)cls{

  const char *name = class_getName(cls);
    
    return [NSString stringWithUTF8String:name];

}

- (NSString*)getSuperClassName:(Class)cls{

    return [NSString stringWithUTF8String:class_getName(class_getSuperclass(cls))];

}

- (NSNumber*)getInstanceSize:(Class)cls{

    return [NSNumber numberWithUnsignedLongLong:class_getInstanceSize(cls)];
    
}


- (NSDictionary*)getVariableWithClass:(Class)cls varName:(NSString*)name{

    const char *localName = [name UTF8String];
    
    Ivar var = class_getInstanceVariable(cls,localName);
    NSMutableDictionary *dic = [NSMutableDictionary new];
    [dic setObject:[NSString stringWithUTF8String:ivar_getName(var)] forKey:@"name"];
    [dic setObject:[NSString stringWithUTF8String:ivar_getTypeEncoding(var)] forKey:@"type"];
    [dic setObject:[NSNumber numberWithUnsignedLongLong:ivar_getOffset(var)] forKey:@"offset"];
    
    return dic;
    
}

- (NSDictionary*)getPropertyWithClass:(Class)cls varName:(NSString*)name{

    objc_property_t property = class_getProperty(cls,[name UTF8String]);
    NSMutableDictionary *dic = [NSMutableDictionary new];
    
    [dic setObject:[NSString stringWithUTF8String:property_getName(property)] forKey:@"name"];
    [dic setObject:[NSString stringWithUTF8String:property_getAttributes(property)] forKey:@"attributes"];
   
    char *attrValue = property_copyAttributeValue(property, "T");
    NSLog(@"attrValue:%s",attrValue);
    free(attrValue);
    
    unsigned int attrCount = 0;
    objc_property_attribute_t * attrs = property_copyAttributeList(property, &attrCount);
    for (unsigned int j = 0; j < attrCount; j ++) {
        objc_property_attribute_t attr = attrs[j];
        const char * name = attr.name;
        const char * value = attr.value;
        NSLog(@"属性的描述：%s 值：%s", name, value);
    }
    free(attrs);
    
    return dic;

}

- (void)MMM{

  //  IMP class_getMethodImplementation(Class cls, SEL name)
    

}


@end
