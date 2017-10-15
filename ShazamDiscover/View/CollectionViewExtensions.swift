//
//  CollectionViewExtensions.swift
//  ShazamDiscover
//
//  Created by Joni Van Roost on 15/10/17.
//  Copyright © 2017 Joni Van Roost. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    // MARK: initial animation for collectionView
    func animateIn() {
        var counter: Double = 1
        for cell in visibleCells {
            
            cell.transform = CGAffineTransform(translationX: 0, y: bounds.height + cell.bounds.height)
            
            UIView.animate(withDuration: 0.7, delay: 0.3 * counter, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.6, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
                counter -= 1
            }, completion: nil)
        }
    }
}
