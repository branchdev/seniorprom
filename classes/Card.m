//
//  Card.m
//  seniordesign
//
//  Created by Michael Branchini on 3/20/13.
//  Copyright (c) 2013 Michael Branchini. All rights reserved.
//

#import "Card.h"
#import <Foundation/Foundation.h>



@implementation Card
@synthesize suit, rank;

-(NSString *) cardImagePath
{
    if(!_cardImagePath != nil) {
        _cardImagePath = [rank stringByAppendingString:suit];
    }
    return _cardImagePath;
}


@end
