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

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck* gameDeck;
@property (strong, nonatomic) IBOutlet UIButton *startGame;




@end

@implementation ViewController

@synthesize gameDeck = _gameDeck;
- (Deck *) gameDeck
{
    if(!_gameDeck){
        _gameDeck = [[Deck alloc]init];
    }
    return _gameDeck;
}

-(int)getmatch
{
    //randomly choose two cards add value and make match 
}

-(IBAction)Start:(id)sender
{
    [self.gameDeck deckReset];
    
    for(int index = 0; index < 16; index++){
        Card *nextCard = [self.gameDeck drawRandomCard];
        UIButton *buttonToAssign = [self.cardButtons objectAtIndex:index];
     
        
        [buttonToAssign setImage:[UIImage imageNamed:@"ok.png"] forState:UIControlStateNormal];
        [buttonToAssign setImage:[UIImage imageNamed:nextCard.cardImagePath] forState:UIControlStateSelected];
        
         //nextCard.cardImagePath forState:UIControlStateSelected];
    }
}




-(IBAction)flipCard:(UIButton *)sender
{ 
    sender.selected = !sender.selected;
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
