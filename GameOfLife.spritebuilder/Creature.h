//
//  Creature.h
//  GameOfLife
//
//  Created by Vasco d'Orey on 24/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

@property (nonatomic, getter = isAlive) BOOL alive;

@property (nonatomic) NSInteger livingNeighbors;

+ (instancetype)creature;
- (id)initCreature;

@end
