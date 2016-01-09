//
//  ViewController.m
//  Category
//
//  Created by MyMac on 15/12/25.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *tel = @"as13871329097";
    NSLog(@"%d",[tel validatePassword]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
