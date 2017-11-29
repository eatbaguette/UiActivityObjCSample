//
//  ViewController.m
//  UIActivityObjCSample
//
//  Created by monkey on 2017/11/29.
//  Copyright © 2017年 monkey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)button:(id)sender {
    NSLog(@"hoge");
    
    //共有したい物を用意 (Arrayにまとめる)
    NSString *text = [NSString stringWithFormat:@"文字文字文字文字"];
    NSURL *url = [NSURL URLWithString:@"http://www....."];
    NSArray *array = @[text,url];
    
    //連携可能アプリをArrayに。
    UIActivity *activity = [UIActivity new];
    NSArray *app = @[activity];
    
    //アクティビティビューコントローラー
    UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:array applicationActivities:app];
    [self presentViewController:activityVC animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
