//
//  ViewController.m
//  2048Max
//
//  Created by 曹老师 on 2018/11/14.
//  Copyright © 2018 曹奕程. All rights reserved.
//

#import "ViewController.h"
#import "F3HNumberTileGameViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    F3HNumberTileGameViewController *ctrl2048 = [F3HNumberTileGameViewController numberTileGameWithDimension:4
                                                                                                winThreshold:2048
                                                                                             backgroundColor:[UIColor whiteColor]
                                                                                                   scoreModule:YES
                                                                                              buttonControls:NO
                                                                                               swipeControls:YES];
    
    [self presentViewController:ctrl2048 animated:YES completion:nil];
    
    
    
}


@end
