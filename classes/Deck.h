//
//  Deck.h
//  seniordesign
//
//  Created by Michael Branchini on 3/20/13.
//  Copyright (c) 2013 Michael Branchini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject



-(Card *)drawRandomCard;

-(void)deckReset;

-(BOOL)isDeckEmpty;

+ (NSArray *)validRanks;
+ (NSArray *)validSuits;


@end
