//
//  Grid.m
//  GameOfLife
//
//  Created by Vasco d'Orey on 24/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"

static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid {
  NSMutableArray *_gridArray;
  float _cellWidth;
  float _cellHeight;
}

- (void)onEnter {
  [super onEnter];
  
  [self setupGrid];
  
  self.userInteractionEnabled = YES;
}

- (void)setupGrid {
  _cellWidth = self.contentSize.width / GRID_COLUMNS;
  _cellHeight = self.contentSize.height / GRID_ROWS;
  
  float x = 0, y = 0;
  
  _gridArray = NSMutableArray.array;
  
  for(int i = 0; i < GRID_ROWS; i ++) {
    _gridArray[i] = NSMutableArray.array;
    x = 0;
    
    for(int j = 0; j < GRID_COLUMNS; j ++) {
      Creature *c = [Creature creature];
      c.anchorPoint = ccp(0, 0);
      c.position = ccp(x, y);
      [self addChild:c];
      
      _gridArray[i][j] = c;
      
      x += _cellWidth;
    }
    
    y += _cellHeight;
  }
}

- (Creature *)creatureForTouchLocation:(CGPoint)location {
  int row = self.contentSize.height / location.y;
  int col = self.contentSize.width / location.x;
  return _gridArray[row][col];
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
  CGPoint touchLocation = [touch locationInNode:self];
  Creature *c = [self creatureForTouchLocation:touchLocation];
  c.alive = YES;
}

@end
