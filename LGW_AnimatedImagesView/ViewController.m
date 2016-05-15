//
//  ViewController.m
//  LGW_AnimatedImagesView
//
//  Created by Lilong on 16/5/15.
//  Copyright © 2016年 第七代目. All rights reserved.
//

#import "ViewController.h"
#import "AnimatedImagesView.h"

@interface ViewController ()<AnimatedImagesViewDelegate>

@property (retain, nonatomic) IBOutlet AnimatedImagesView* animatedImagesView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    添加动态图
    self.animatedImagesView = [[AnimatedImagesView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:self.animatedImagesView];
    self.animatedImagesView.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark AnimatedImagesViewDelegate

- (NSUInteger)animatedImagesNumberOfImages:(AnimatedImagesView*)animatedImagesView
{
    return 2;
}

- (UIImage*)animatedImagesView:(AnimatedImagesView*)animatedImagesView imageAtIndex:(NSUInteger)index
{
    return [UIImage imageNamed:@"huoying"];
}

- (void)viewWillAppear:(BOOL)animated{
    [self.animatedImagesView startAnimating];
}

- (void)viewWillDisappear:(BOOL)animated{
    [self.animatedImagesView stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
