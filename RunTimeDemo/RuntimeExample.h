//
//  RuntimeExample.h
//  RunTimeDemo
//
//  Created by gewara on 2017/7/27.
//  Copyright © 2017年 gewara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>

@interface RuntimeExample : NSObject
/*
 根据Class获取的名称
 */
- (NSString*)getClassName:(Class)cls;

/*
 获取父类名称
 */
- (NSString*)getSuperClassName:(Class)cls;
/*
 获取类占用的内存
 http://www.jianshu.com/p/df6b252fbaae
 在不同位CPU下回可能会返回不同的数值
 */
- (NSNumber*)getInstanceSize:(Class)cls;

/*
  获取类中指定名称实例[成员变量]的信息
  成员变量
 
*/
- (NSDictionary*)getVariableWithClass:(Class)cls varName:(NSString*)name;

/*
 获取类中指定名称属性的信息
 */
- (NSDictionary*)getPropertyWithClass:(Class)cls varName:(NSString*)name;
@end
