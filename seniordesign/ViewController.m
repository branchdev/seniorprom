//
//  ViewController.m
//  seniordesign
//
//  Created by Michael Branchini on 3/20/13.
//  Copyright (c) 2013 Michael Branchini. All rights reserved.
//

#import "ViewController.h"
#import "Card.h"
#import "Deck.h"
#import "Player.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck* gameDeck;
@property (strong, nonatomic) Player* player1;
@property (strong, nonatomic) Player* player2;
@property (strong, nonatomic) IBOutlet UIButton *startGame;
@property (strong, nonatomic) IBOutlet UILabel *setMatch;
@property (strong, nonatomic) IBOutlet UILabel *p1;
@property (strong, nonatomic) IBOutlet UILabel *p2;
@property (strong, nonatomic) NSMutableArray *cardsInPlay;
@property (strong, nonatomic) Card* card1;
@property (strong, nonatomic) Card* card2;
@property(nonatomic)NSInteger flipped;
@property(nonatomic)NSInteger matchPoint;
@property(nonatomic)NSInteger c1;
@property(nonatomic)NSInteger c2;

-(void)makeMatch;

-(void)flipCardAtIndex:(NSUInteger)index;
-(void)noMatch;

@end

@implementation ViewController
@synthesize cardsInPlay;
@synthesize card1;
@synthesize card2;
@synthesize player1;
@synthesize player2;

@synthesize gameDeck = _gameDeck;
- (Deck *) gameDeck
{
    if(!_gameDeck){
        _gameDeck = [[Deck alloc]init];
    }
    return _gameDeck;
}

-(void)makeMatch
{
    Card *c1;
    Card *c2;
    
    int rand1 = 0 + rand() % 15;
    int rand2 = 0 + rand() % 15;
    while (rand2 == rand1) {
        rand2 = 0 + rand() % 15;
    }
    
    c1 =[self.cardsInPlay objectAtIndex:rand1];
    c2 =[self.cardsInPlay objectAtIndex:rand2];
   
    self.matchPoint = [c1.rank intValue] + [c2.rank intValue];
    
    self.setMatch.text = [NSString stringWithFormat:@"Match: %i", self.matchPoint ];
    
    
}

-(void)checkMatch
{
    NSInteger m1 = [card1.rank intValue];
    NSInteger m2 = [card2.rank intValue];
    
    if (m1 + m2 == self.matchPoint) {
        self.setMatch.text = [NSString stringWithFormat:@"Match!"];
        sleep(1);
        int currentscore = [self.player1.score intValue];
        currentscore++;
        
        self.player1.score = [NSString stringWithFormat:@"1"];
        self.p1.text = [NSString stringWithFormat:@" %@", player1.score];
        [self makeMatch];
        [self noMatch];
    } else{
        //self.setMatch.text = [NSString stringWithFormat:@" NO Match!"];
        sleep(1);
        [self noMatch];
        
    }

}
-(void)noMatch
{
    
    for (int i = 0; i < self.cardButtons.count;i++) {
        UIButton *cardReset = self.cardButtons[i];
        cardReset.selected = NO;
        
    }
    card2 = nil;
    card1 = nil;
    self.flipped = 0;
    
}


-(IBAction)Start:(id)sender
{
    [self.gameDeck deckReset];
    cardsInPlay = [[NSMutableArray alloc] init];
    self.player1.score = @"0";
//    self.player2.score = @"0";
    
    for(int index = 0; index < 16; index++){
        Card *nextCard = [self.gameDeck drawRandomCard];
        UIButton *buttonToAssign = [self.cardButtons objectAtIndex:index];
        buttonToAssign.tag = index;
        [self.cardsInPlay insertObject:nextCard atIndex:index];
     
        
        [buttonToAssign setImage:[UIImage imageNamed:@"ok.png"] forState:UIControlStateNormal];
        [buttonToAssign setImage:[UIImage imageNamed:nextCard.cardImagePath] forState:UIControlStateSelected ];
        [buttonToAssign setImage:[UIImage imageNamed:nextCard.cardImagePath] forState:UIControlStateHighlighted];
        
        //[buttonToAssign ta
        
         //nextCard.cardImagePath forState:UIControlStateSelected];
    }
    self.flipped = 0;
    self.startGame.enabled = NO;
    self.startGame.alpha = 0.0;
    
    [self makeMatch];
    
}




-(IBAction)flipCard:(UIButton *)sender
{

//    if(self.flipped <1){
//        //self.cardsInPlay[sender].
//    }
//    else{
//        //[self checkMatch]
//    }
    
    if(self.flipped <2)
    {
    int i = [sender tag];
    NSUInteger index = i;
    sender.selected = YES;
    
    [self flipCardAtIndex: index];
    
   
    
    }
//    [self flipCardAtIndex:[self.cardButtons ]];
//    [self.flipCardAtIndex:[self.cardButtons indexOfObject:sender]];
//    self.flipCount++;
    
    
    
    
}

-(void)flipCardAtIndex:(NSUInteger)index
{
    if (self.flipped == 0) {
        self.card1 = self.cardsInPlay[index];
        self.p1.text = [NSString stringWithFormat:@" %@", card1.rank];
        self.flipped++;
    } else{
        self.card2 = self.cardsInPlay[index];
        self.p2.text = [NSString stringWithFormat:@" %@", card2.rank];
        
      
            
        
        [self checkMatch];
                
    }
    

}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
