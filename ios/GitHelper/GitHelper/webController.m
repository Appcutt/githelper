//
//  webController.m
//  GitHelper
//
//  Created by 梁腾 on 16/4/5.
//  Copyright © 2016年 TT. All rights reserved.
//

#import "webController.h"

@interface webController ()<UIWebViewDelegate>

@property (nonatomic,strong) UIWebView *webView;

@end

@implementation webController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"百度";
    self.view.backgroundColor = [UIColor whiteColor];
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    //是否支持交互
    [self.webView setUserInteractionEnabled:YES];
    self.webView.delegate = self;
    //设置不透明
    [self.webView setOpaque:NO];
    //自动缩放适应屏幕
    [self.webView setScalesPageToFit:YES];
    
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    
    [self.view addSubview:self.webView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
