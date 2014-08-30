
//
//  PlayCardDeck.m
//  Machismo
//
//  Created by bruce on 8/3/14.
//  Copyright (c) 2014 bruce. All rights reserved.
//

#import "PlayCardDeck.h"
#import "PlayCard.h"



@implementation PlayCardDeck

- (instancetype) init
{
  self = [super init];
  if (self) {
    for (NSString* suit in [PlayCard validSuits]) {
      for (NSInteger rank = 1; rank <= [PlayCard maxRank]; rank ++) {
        PlayCard* playCard = [[ PlayCard alloc ] init ];
        playCard.suit = suit;
        playCard.rank = rank;
        [self addCard:playCard];
      }
    }
  }
    
  return self;
  
}

@end
