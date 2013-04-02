//
//  Addition Card.m
//  seniordesign
//
//  Created by Michael Branchini on 3/20/13.
//  Copyright (c) 2013 Michael Branchini. All rights reserved.
//

#import "AdditionCard.h"

@implementation AdditionCard




-(NSString *)contents
{
    NSArray *rankStrings = [AdditionCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; //because we provide getter and setter

+ (NSArray *)validSuits
{
    return @[@"h",@"d", @"s", @"c"];
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", @"J",@"Q",@"K"];
}

+(NSUInteger)maxRank { return [self rankStrings].count-1; }

-(void)setRank:(NSUInteger)rank
{
    if (rank <= [AdditionCard maxRank]){
        _rank = rank;
    }
}

-(void)setSuit:(NSString *)suit
{
    if ([[AdditionCard validSuits] containsObject:suit]) {
        _suit= suit;
    }
}


-(NSString *)suit
{
    return  _suit ? _suit : @"?";
}


@end
