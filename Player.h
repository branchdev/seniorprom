//
//  Player.h
//  seniordesign
//
//  Created by Michael Branchini on 3/20/13.
//  Copyright (c) 2013 Michael Branchini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PowerUp.h"
@interface Player : NSObject

@property (readonly, nonatomic) int score;
@property (readonly, nonatomic) int turns;
@property (strong, nonatomic) NSString *name;




@end
