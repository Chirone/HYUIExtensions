//
//  UICollectionView+CenterSelection.m
//  Printicular
//
//  Created by Hayden Young on 9/10/13.
//  Copyright (c) 2013 MEA Mobile. All rights reserved.
//

#import "UICollectionView+CenterSelection.h"

@implementation UICollectionView (CenterSelection)
- (void)selectCenterMostViewWithSelection:(void (^)(id cell))selectionBlock deselection:(void (^)(id cell))deselectionBlock
{
//	NSLog(@"visible cells:%d; %p", self.visibleCells.count, self);
	if(self.visibleCells.count == 0)
	{
		if(selectionBlock)
			selectionBlock(nil);
		if(deselectionBlock)
			deselectionBlock(nil);
		return;
	}
		
	NSArray *orderedCells = [self.visibleCells sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
		
		return [@([obj1 center].x) compare:@([obj2 center].x)];
	}];
	
	UICollectionViewCell *centerMostCell = orderedCells[0];
	CGFloat centerX = self.frame.size.width * 0.5 + self.contentOffset.x;
	for(int i = 0; i < orderedCells.count - 1; i++)
	{
		UICollectionViewCell *cellOne = orderedCells[i];
		CGFloat deltaOne = fabsf(cellOne.center.x - centerX);
		UICollectionViewCell *cellTwo = orderedCells[i+1];
		CGFloat deltaTwo = fabsf(cellTwo.center.x - centerX);
		if(deltaTwo < deltaOne)
		{
			centerMostCell = cellTwo;
			if(deselectionBlock)
				deselectionBlock(cellOne);
		} else
		{
			if(deselectionBlock)
				deselectionBlock(cellTwo);
		}
	}
	if(selectionBlock)
		selectionBlock(centerMostCell);
}
@end
