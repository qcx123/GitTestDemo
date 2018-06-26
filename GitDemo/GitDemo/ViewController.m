//
//  ViewController.m
//  GitDemo
//
//  Created by 乔春晓 on 2018/6/26.
//  Copyright © 2018年 乔春晓. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "NSMutableAttributedString+QCXAttributedString.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _label = [[UILabel alloc] init];
    [self.view addSubview:_label];
//    _label.text = @"哈哈哈";
//    _label.backgroundColor = [UIColor redColor];
    
    [_label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(60);
    }];
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] init];
    str.add(@"小样",@{
                    NSForegroundColorAttributeName:[UIColor redColor],
                    NSFontAttributeName :[UIFont systemFontOfSize:14],
                    });
    str.add(@"hhhh样",@{
                    NSForegroundColorAttributeName:[UIColor purpleColor],
                    NSFontAttributeName :[UIFont systemFontOfSize:30],
                    });
    _label.attributedText = str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
