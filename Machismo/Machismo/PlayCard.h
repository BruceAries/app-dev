//
//  PlayCard.h
//  Machismo
//
//  Created by bruce on 8/3/14.
//  Copyright (c) 2014 bruce. All rights reserved.
//

#import "Card.h"

@interface PlayCard : Card

@property (strong, nonatomic) NSString* suit;
@property (nonatomic) NSInteger rank;

+ (NSArray *) validSuits;
+ (NSArray *) rankStrings;
+ (NSInteger) maxRank;

@end
