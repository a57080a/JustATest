//
//  ViewController.m
//  FTP
//
//  Created by sifanchen on 16/4/16.
//  Copyright © 2016年 qixiekeji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSString *path= [[NSBundle mainBundle] pathForResource:@"proPlist" ofType:@"plist"];
//    NSMutableDictionary *dict =[[NSMutableDictionary alloc] initWithContentsOfFile:path];
//    
//    dict[@"PayloadDisplayName"] = @"这个是显示的名字";
//    dict[@"PayloadOrganization"] = @"这个是组织名";
//    dict[@"PayloadDescription"] = @"这个是不知道哪的名字";
//    
//    NSArray *PayloadContent = dict[@"PayloadContent"];
//    NSMutableDictionary *PayloadContentDic = PayloadContent.firstObject;
//    
//    PayloadContentDic[@"PayloadDisplayName"] = @"应该是详情里的wifi名";
//    PayloadContentDic[@"SSID_STR"] = @"wifi_SSID";
//    PayloadContentDic[@"Password"] = @"密码";
//    dict[@"PayloadContent"] = @[PayloadContentDic];
//    
//    NSMutableData * data = [[NSMutableData alloc] init];
//    NSKeyedArchiver * archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
//    [archiver encodeObject:dict forKey:@"talkData"];
    
    
    NSString *documentsPath =  NSTemporaryDirectory();
//    NSString *testDirectory = [documentsPath stringByAppendingPathComponent:@"test"];
//    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *testPath = [documentsPath stringByAppendingPathComponent:@"AutoLink.mobileconfig"];
    
//    BOOL res = [dict writeToFile:testPath atomically:true];
    
////    BOOL res=[fileManager createFileAtPath:testPath contents:data attributes:dict];
//    if (res) {
//        NSLog(@"文件创建成功: %@" ,testPath);
//        [[UIApplication sharedApplication] openURL:[NSURL fileURLWithPath:testPath]];
    
    
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://file.bingfeng.tw/download2.php?a=55427AutoLink3.mobileconfig&b=ec6765604b559769ff9b04b7670866e2"]];
    
    
    
    NSLog(@"写入%@",[[NSFileManager defaultManager] createFileAtPath:testPath contents:data attributes:nil]?@"成功":@"失败");
    
    
    NSLog(@"打开%@",[[UIApplication sharedApplication]openURL:[NSURL fileURLWithPath:testPath]]?@"成功":@"失败");
    
    
    
//    NSLog(@"%@",[[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://file.bingfeng.tw/download2.php?a=55427AutoLink3.mobileconfig&b=ec6765604b559769ff9b04b7670866e2"]]?@"成功":@"失败");
    //http://file.bingfeng.tw/download2.php?a=55427AutoLink3.mobileconfig&b=ec6765604b559769ff9b04b7670866e2
//    NSLog(@"%@",[[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/a57080a/daijoubu/master/AutoLink3.mobileconfig"]]?@"成功":@"失败");

//    }else
//        NSLog(@"文件创建失败");
//    
//    
    
    
    //    [NSFileManager defaultManager]set
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
