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
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) IBOutlet UIButton *startGame;




@end

@implementation ViewController
@synthesize deck;


-(int)getmatch
{
    //randomly choose two cards add value and make match 
}

-(IBAction)Start:(id)sender
{
    [deck deckReset];
    
    
    
    
    
    
}


-(IBAction)flipCard:(UIButton *)sender
{
    //Card *card = [self card]
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
