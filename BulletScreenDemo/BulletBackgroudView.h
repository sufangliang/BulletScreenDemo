//
//  BulletBackgroudView.h
//  BulletScreenDemo
//
//  Created by liang on 2017/6/27.
//  Copyright © 2017年 liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BulletView;
@interface BulletBackgroudView : UIView

- (void)dealTapGesture:(UITapGestureRecognizer *)gesture block:(void(^)(BulletView *bulletView))block;
@end
