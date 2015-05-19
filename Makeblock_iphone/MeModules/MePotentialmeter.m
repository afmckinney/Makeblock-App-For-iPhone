//
//  MePotentialmeter.m
//  Makeblock_Iphone
//
//  Created by Riven on 14-9-5.
//  Copyright (c) 2014年 Makeblock. All rights reserved.
//

#import "MePotentialmeter.h"

@implementation MePotentialmeter

-(NSData*)getQuery:(int)index
{
    int type = [self.model.type intValue];
    int port = [self.model.port intValue];
    int slot = [self.model.slot intValue];
    NSData * data = [MeModule buildModuleRead:type port:port slot:slot index:index];
    return data;
}

-(void)updateModuleValue:(float)value
{
    NSString * str = [NSString stringWithFormat:@"%.2f",value];
    [self.valueLabel setText:str];
}

@end
