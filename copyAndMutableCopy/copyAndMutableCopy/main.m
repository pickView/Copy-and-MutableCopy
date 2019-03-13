//
//  main.m
//  copyAndMutableCopy
//
//  Created by allenChou on 2019/3/11.
//  Copyright © 2019 allenChou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableArray *str = [NSMutableArray arrayWithObjects:@"this is test", nil];
//        NSMutableArray *strCopy = [str copy];
//        NSMutableArray *strMutableCopy = [str copy];
//        NSLog(@"str:%p",str);
//        NSLog(@"strCopy:%p",strCopy);
//        NSLog(@"strMutableCopy:%p",strMutableCopy);
        
//        NSString *mstr = [NSString stringWithFormat:@"nice!"];
//        NSString *mstrCopy = [mstr copy];
//        NSString *mstrMutableCopy = [mstr mutableCopy];
//        NSLog(@"mstr:%p",mstr);
//        NSLog(@"mstrCopy:%p",mstrCopy);
//        NSLog(@"mstrMutableCopy:%p",mstrMutableCopy);
//        mstr = @"1234";
//        NSLog(@"%@-%@-%@",mstr,mstrCopy,mstrMutableCopy);
        
        NSMutableString *mstr = [NSMutableString stringWithFormat:@"nice!"];
        NSString *mstrCopy = [mstr copy];
        NSString *mstrMutableCopy = [mstr mutableCopy];
        NSLog(@"mstr:%p",mstr);
        NSLog(@"mstrCopy:%p",mstrCopy);
        NSLog(@"mstrMutableCopy:%p",mstrMutableCopy);
        mstr = [NSMutableString stringWithFormat:@"12345"];
        NSLog(@"%@-%@-%@",mstr,mstrCopy,mstrMutableCopy);

//        NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
//        Warrior *w = [Warrior new];
//        w.skills = arr;
//        NSLog(@"%@",w.skills);
//        [w.skills addObject:@"4"];
//        NSLog(@"%@",w.skills);
    }
    return 0;
}
