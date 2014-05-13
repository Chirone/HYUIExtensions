//
//  UICollectionView+CenterSelection.h
//  Printicular
//
//  Created by Hayden Young on 9/10/13.
//  Copyright (c) 2013 MEA Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (CenterSelection)

- (void)selectCenterMostViewWithSelection:(void (^)(id cell))selectionBlock deselection:(void (^)(id cell))deselectionBlock;

@end
