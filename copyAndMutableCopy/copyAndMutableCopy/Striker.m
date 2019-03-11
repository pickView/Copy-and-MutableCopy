//
//  Striker.m
//  copyAndMutableCopy
//
//  Created by allenChou on 2019/3/11.
//  Copyright © 2019 allenChou. All rights reserved.
//

#import "Striker.h"

@implementation Striker
- (id)copyWithZone:(NSZone *)zone {
    Striker *ster = [Striker new];
    ster.name = @"athey";
    ster.gunshot = 550.f;
    return ster;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    Striker *ster = [Striker new];
    ster.name = @"jinx";
    ster.gunshot = 600.f;
    return ster;
}
@end
