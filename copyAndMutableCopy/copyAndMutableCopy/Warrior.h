//
//  Warrior.h
//  copyAndMutableCopy
//
//  Created by allenChou on 2019/3/11.
//  Copyright © 2019 allenChou. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Warrior : NSObject<NSCopying,NSMutableCopying>
@property (nonatomic, copy) NSString *weapon;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSMutableArray *skills;
@end

NS_ASSUME_NONNULL_END
