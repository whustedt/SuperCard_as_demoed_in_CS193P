//
//  Deck.h
//  Matchismo
//
//  Created by Wilken Hustedt on 29.01.13.
//  Copyright (c) 2013 whustedt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
