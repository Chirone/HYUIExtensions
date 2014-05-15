//
//  UICollectionView+HYCenterSelection.h
//  Printicular
//
//  Created by Hayden Young on 9/10/13.
//  Copyright (c) 2013 Hayrino Digital. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (HYCenterSelection)

- (void)selectCenterMostViewWithSelection:(void (^)(id cell))selectionBlock deselection:(void (^)(id cell))deselectionBlock;

@end
