//
//  BulletView.h
//  BulletScreenDemo
//
//  Created by liang on 2017/6/27.
//  Copyright © 2017年 liang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CommentMoveStatus) {
    Start,
    Enter,
    End
    
};

typedef NS_ENUM(NSInteger, Trajectory) {
    Trajectory_1,
    Trajectory_2,
    Trajectory_3
};

@interface BulletView : UIView
@property (nonatomic, copy) void(^moveBlock)(CommentMoveStatus status);
@property Trajectory trajectory; //弹幕弹道定义
@property (nonatomic, strong) UILabel *lbComment;


- (instancetype)initWithContent:(NSString *)content;
- (void)startAnimation;
- (void)stopAnimation;

@end
