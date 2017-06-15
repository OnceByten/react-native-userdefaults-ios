//
//  StandardUserDefaultsManager.m
//  RNStandardUserDefaultsIOS
//
//  Created by Dave Sibiski on 5/15/15.
//  Copyright (c) 2015 Dave Sibiski. All rights reserved.
//

#import "UserDefaultsManager.h"

@implementation UserDefaultsManager

+ (void)setObject:(id)object forKey:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
}

+ (void)setBool:(bool)value forKey:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
}

+ (void)removeObjectForKey:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
}

+ (NSArray *)arrayForKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] arrayForKey:key];
}

+ (NSString *)stringForKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] stringForKey:key];
}

+ (id)objectForKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+ (bool)boolForKey:(NSString *)key {
    
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

+ (NSString *)dateForKey:(NSString *) key {
    
    NSDate *date = (NSDate *)[[NSUserDefaults standardUserDefaults] objectForKey:key];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:date];
    
    return dateString;
}

@end
