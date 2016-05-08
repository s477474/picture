//
//  ViewController.m
//  picture轮播
//
//  Created by Exception on 16/5/8.
//  Copyright © 2016年 Exception. All rights reserved.
//

#import "ViewController.h"
#import "JECalourseView.h"
@interface ViewController ()<JECalourseViewDataSource>
@property(nonatomic,strong)JECalourseView* calourse;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JECalourseView* calourse = [[JECalourseView alloc]initWithFrame:CGRectMake(25, 10, self.view.bounds.size.width-50, 200)];
    
    [self.view addSubview:calourse];
    [calourse setDataSource:self];
    _calourse=calourse;
}
-(NSInteger)JE3DCalourseNumber
{
    return 5;
}
-(void)JE3DCalourseViewWith:(JECalourseCell *)Cell andIndex:(NSInteger)index
{
    
    [Cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",(long)index]]];
}


@end
