//
//  AdditionDeck.m
//  seniordesign
//
//  Created by Michael Branchini on 3/20/13.
//  Copyright (c) 2013 Michael Branchini. All rights reserved.
//

#import "AdditionDeck.h"
#import "AdditionCard.h"

@implementation AdditionDeck

-(id)init
{
    
    self = [super init];
    
    if (self){
        for (NSString *suit in [AdditionCard validSuits]){
            for(NSUInteger rank =1; rank<= [AdditionCard maxRank]; rank++){
                AdditionCard *card = [[AdditionCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card atTop:YES];
                
            }
        }
        
        
    }
    
    return self;
    
}




@end
