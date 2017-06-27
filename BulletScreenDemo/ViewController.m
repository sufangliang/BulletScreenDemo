//
//  ViewController.m
//  BulletScreenDemo
//
//  Created by liang on 2017/6/27.
//  Copyright © 2017年 liang. All rights reserved.
//

#import "ViewController.h"
#import "BulletView.h"
#import "BulletManager.h"
#import "BulletBackgroudView.h"

@interface ViewController ()
@property (nonatomic, strong) BulletManager *bulletManager;
@property (nonatomic, strong) BulletBackgroudView *bulletBgView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bulletManager = [[BulletManager alloc] init];
    __weak ViewController *myself = self;
    self.bulletManager.generateBulletBlock = ^(BulletView *bulletView) {
        [myself addBulletView:bulletView];
    };
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHandler:)];
    tap.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tap];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startAc:(UIButton *)sender {
    [self.bulletManager start];

    
}

- (IBAction)stopAc:(UIButton *)sender {
    
    [self.bulletManager stop];

}

- (void)addBulletView:(BulletView *)bulletView {
    bulletView.frame = CGRectMake(CGRectGetWidth(self.view.frame)+50, 20 + 34 * bulletView.trajectory, CGRectGetWidth(bulletView.bounds), CGRectGetHeight(bulletView.bounds));
    [self.bulletBgView addSubview:bulletView];
    [bulletView startAnimation];
}
- (BulletBackgroudView *)bulletBgView {
    if (!_bulletBgView) {
        _bulletBgView = [[BulletBackgroudView alloc] init];
        _bulletBgView.frame = CGRectMake(0, 300, CGRectGetWidth(self.view.frame), 150);
        _bulletBgView.backgroundColor = [UIColor clearColor];
        [self.view addSubview:_bulletBgView];
    }
    return _bulletBgView;
}

- (void)tapHandler:(UITapGestureRecognizer *)gesture {
    [self.bulletBgView dealTapGesture:gesture block:^(BulletView *bulletView){
        NSLog(@"%@", bulletView.lbComment.text);
    }];
}



@end
