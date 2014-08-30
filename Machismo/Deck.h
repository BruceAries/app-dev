//
//  Deck.h
//  Machismo
//
//  Created by bruce on 8/3/14.
//  Copyright (c) 2014 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard: (Card *)card;
- (void) addCard: (Card* )card atTop: (BOOL)atTop;
- (Card* ) drawRandomCard;

@end
