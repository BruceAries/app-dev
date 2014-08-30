//
//  Deck.m
//  Machismo
//
//  Created by bruce on 8/3/14.
//  Copyright (c) 2014 bruce. All rights reserved.
//

#import "Deck.h"

@interface Deck ()

@property (strong, nonatomic) NSMutableArray* cards;

@end


@implementation Deck

- (NSMutableArray *) cards
{
  if (_cards == nil) {
    _cards = [[NSMutableArray alloc] init];
  }
  return _cards;
}


- (void) addCard:(Card *)card atTop:(BOOL)atTop
{
  if (atTop) {
    [self.cards insertObject:card atIndex:0];
  }
  else
    [self.cards addObject:card];
}


- (void) addCard:(Card *)card
{
  [self addCard:card atTop:NO];
}


- (Card *) drawRandomCard
{
  Card* randomCard = nil;
  
  if ([self.cards count] > 0) {
    int index = arc4random() % [self.cards count];
    randomCard = [self.cards objectAtIndex:index];
    [self.cards removeObjectAtIndex:index];
  }
  return randomCard;
}



@end
