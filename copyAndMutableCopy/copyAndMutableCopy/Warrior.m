//
//  Warrior.m
//  copyAndMutableCopy
//
//  Created by allenChou on 2019/3/11.
//  Copyright © 2019 allenChou. All rights reserved.
//

#import "Warrior.h"
#import <objc/runtime.h>

@implementation Warrior
- (id)copyWithZone:(NSZone *)zone {
    Warrior *warer = [Warrior new];
    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList(self.class, &count);
    for (int i = 0; i<count; i++) {
        objc_property_t propertyNameString = properties[i];
        const char *name = property_getName(propertyNameString);
        NSString *propertyName = [NSString stringWithUTF8String:name];
        id value = [self valueForKey:propertyName];
        if (value) {
            [warer setValue:value forKey:propertyName];
        }
    }
    free(properties);
    
    return warer;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    Warrior *warer = [Warrior new];
    unsigned int count = 0;
    objc_property_t *properties = class_copyPropertyList(self.class, &count);
    for (int i = 0; i<count; i++) {
        objc_property_t propertyNameString = properties[i];
        const char *name = property_getName(propertyNameString);
        NSString *propertyName = [NSString stringWithUTF8String:name];
        id value = [self valueForKey:propertyName];
        if (value) {
            [warer setValue:value forKey:propertyName];
        }
    }
    free(properties);
    return warer;
}

- (void)setSkills:(NSMutableArray *)skills{
    _skills = skills;
}
@end
