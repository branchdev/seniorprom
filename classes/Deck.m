//
//  Deck.m
//  seniordesign
//
//  Created by Michael Branchini on 3/20/13.
//  Copyright (c) 2013 Michael Branchini. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;


@end

@implementation Deck

+ (NSArray *)validSuits
{
    return @[@"h",@"d", @"s", @"c"];
}

+ (NSArray *)validRanks
{
    return @[ @"1", @"2", @"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", @"11",@"12",@"13"];
}



-(void)deckReset
{
    [self.cards removeAllObjects];
        for(NSString *suit in [Deck validSuits]){
            for(NSString *rank in [Deck validRanks]){
                Card *card = [[Card alloc] init];
                card.suit = suit;
                card.rank = rank;
                card.val = (int)(rank);
                card.cardimgpath = [NSMutableString stringWithFormat:rank, suit];
 
                [self.cards addObject:card];
            }
    }

    
}

-(BOOL)isDeckEmpty
{
    return (self.cards.count == 0);
}


-(NSMutableArray *)cards
{
    if(!_cards)
    {
        _cards = [[NSMutableArray alloc] init];
    
    }
    
    return _cards;
    
}


-(Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if(self.cards.count){
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}



@end
