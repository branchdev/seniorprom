//
//  Card.h
//  seniordesign
//
//  Created by Michael Branchini on 3/20/13.
//  Copyright (c) 2013 Michael Branchini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject


@property (strong, nonatomic) NSString *cardImagePath;
@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSString *rank;
@property ( nonatomic) NSUInteger val;

@property (nonatomic, getter = isflippedUp) BOOL flippedUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;



@end
