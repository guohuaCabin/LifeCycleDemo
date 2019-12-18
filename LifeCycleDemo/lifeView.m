//
//  lifeView.m
//  View_LifeCycle
//
//  Created by 秦国华 on 2019/12/17.
//  Copyright © 2019 秦国华. All rights reserved.
//

#import "lifeView.h"

@implementation lifeView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)layoutSubviews
{
    NSLog(@"%s",__func__);
}

-(void)fillData:(id)data
{
    [self drawRect:CGRectZero];
    
}


@end
