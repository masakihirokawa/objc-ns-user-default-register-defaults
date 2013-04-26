//
//  ViewController.m
//  NSUserDefaultsRegisterDefaults
//
//  Created by Dolice on 2013/04/26.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //ユーザーデフォルトを取得する
  NSUserDefaults *userDefaults;
  userDefaults = [NSUserDefaults standardUserDefaults];
  
  //デフォルト値を設定するために辞書を作成する
  NSDictionary *dictionary;
  dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                [NSNumber numberWithInteger:6], @"myValue", nil];
  
  //ユーザーデフォルトに初期値として設定する
  [userDefaults registerDefaults:dictionary];
  
  //設定値を読み込む
  NSInteger i = [userDefaults integerForKey:@"myValue"];
  NSLog(@"%ld", (long)i);
  
  //初期値が設定されていない場合は「0」になる
  i = [userDefaults integerForKey:@"noneValue"];
  NSLog(@"%ld", (long)i);
}

@end
