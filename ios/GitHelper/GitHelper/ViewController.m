//
//  ViewController.m
//  GitHelper
//
//  Created by 梁腾 on 16/3/31.
//  Copyright © 2016年 TT. All rights reserved.
//

#import "ViewController.h"
#import "webController.h"
#import "helpController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)helpBtnClick:(UIButton *)sender {
    
    helpController *helpCon = [[helpController alloc] init];
    
    [self.navigationController pushViewController:helpCon animated:NO];
}


- (IBAction)baiduBtnClick {
    
    webController *webCon = [[webController alloc] init];
    
    [self.navigationController pushViewController:webCon animated:NO];
}

@end
