//
//  GuideController.m
//  2048Max
//
//  Created by 曹老师 on 2018/11/15.
//  Copyright © 2018 曹奕程. All rights reserved.
//

#import "GuideController.h"
#import "JLCardViewController.h"

@interface GuideController ()

@end

@implementation GuideController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = Background_Color;
    _mainView.contentSize = CGSizeMake(kScreenWidth * 4, kScreenHeight);
    _mainView.pagingEnabled = YES;
    _mainView.showsHorizontalScrollIndicator = NO;
    
    for (NSInteger i = 1; i <= 4; i++) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(kScreenWidth * (i - 1), 0, kScreenWidth, kScreenHeight)];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"start%ld", i]];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [_mainView addSubview:imageView];
        
        if (i == 4) {
            
            imageView.userInteractionEnabled = YES;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
            [imageView addGestureRecognizer:tap];
            
        }
        
    }
    
}



#pragma mark - 点击最后一张引导图，前往首页
- (void)tapAction {
    
    [UIView animateWithDuration:.2 animations:^{
        _mainView.alpha = 0;
    } completion:^(BOOL finished) {
        JLCardViewController *vc = [[JLCardViewController alloc] init];
        [UIApplication sharedApplication].keyWindow.rootViewController = vc;
    }];
    
    
}


































@end
