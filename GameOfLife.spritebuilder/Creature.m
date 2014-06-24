//
//  Creature.m
//  GameOfLife
//
//  Created by Vasco d'Orey on 24/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

+ (instancetype)creature {
  return [[self alloc] initCreature];
}

- (instancetype)initCreature {
  self = [super initWithImageNamed:@"bubble.png"];
  if(!self) return nil;
  
  self.alive = NO;
  return self;
}

- (id)init {
  return [self initCreature];
}

- (void)setAlive:(BOOL)alive {
  _alive = alive;
  self.visible = alive;
}

@end
