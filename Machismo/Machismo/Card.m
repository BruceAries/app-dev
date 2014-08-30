//
//  Card.m
//  Machismo
//
//  Created by bruce on 8/3/14.
//  Copyright (c) 2014 bruce. All rights reserved.
//

#import "Card.h"

@interface Card ()

@end


@implementation Card

- (int) match:(NSArray *)othercards
{
  int score = 0;
  for (Card *card in othercards) {
    
    if ( [self.content isEqualToString:card.content]) {
      score = 1;
    }
  }
  
  return score;
}

@end
