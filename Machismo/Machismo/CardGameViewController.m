//
//  CardGameViewController.m
//  Machismo
//
//  Created by bruce on 7/29/14.
//  Copyright (c) 2014 bruce. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayCardDeck.h"

@interface CardGameViewController ()
@property (strong, nonatomic) IBOutlet UILabel *FlipLabel;
@property (nonatomic) NSUInteger flipCount;
@property (strong, nonatomic) Deck* deck;

@end

@implementation CardGameViewController



- (Deck *) deck
{
  if (!_deck) {
    _deck = [self createDeck];
  }
  
  return _deck;
}

- (Deck *) createDeck
{
  return [[PlayCardDeck alloc] init];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setFlipCount:(NSUInteger)flipCount
{
  _flipCount = flipCount;
  self.FlipLabel.text = [NSString stringWithFormat:@"Flip:%lu",_flipCount];
  
}


- (IBAction)TouchDown:(UIButton *)sender {
  
  if ( [sender.currentTitle length] > 0) {
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback.jpg"] forState:UIControlStateNormal];
    [sender setTitle:@"" forState:UIControlStateNormal];
  }
  else
  {
    Card* card = [self.deck drawRandomCard];
    [sender setTitle:card.content forState:UIControlStateNormal];
    [sender setBackgroundColor:[ UIColor whiteColor]];
    [sender setBackgroundImage:nil forState:UIControlStateNormal];
  }
  
  self.flipCount ++;
}
@end
