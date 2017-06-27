//
//  BulletManager.h
//  BulletScreenDemo
//
//  Created by liang on 2017/6/27.
//  Copyright © 2017年 liang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BulletView;
@interface BulletManager : NSObject
@property (nonatomic, copy) void(^generateBulletBlock)(BulletView *view);
- (void)start;
- (void)stop;
@end
