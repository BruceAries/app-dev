//
//  PlayCard.m
//  Machismo
//
//  Created by bruce on 8/3/14.
//  Copyright (c) 2014 bruce. All rights reserved.
//

#import "PlayCard.h"

@implementation PlayCard
@synthesize suit = _suit;


- (NSString* ) content
{
  return [[[PlayCard rankStrings] objectAtIndex:self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) rankStrings
{
  return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSInteger) maxRank
{
  return  [[self rankStrings] count] - 1;
}

- (void) setRank:(NSInteger)rank
{
  if (rank <= [PlayCard maxRank] && rank >= 0) {
    _rank = rank;
  }
}


+ (NSArray *) validSuits
{
  return @[@"♠︎", @"♣︎", @"♦︎", @"♥︎"];
}


- (void) setSuit:(NSString *)suit
{
  if ([ [PlayCard validSuits] containsObject:suit]) {
    _suit = suit;
  }
}

- (NSString* ) suit
{
  return _suit ? _suit: @"?";
}



@end
