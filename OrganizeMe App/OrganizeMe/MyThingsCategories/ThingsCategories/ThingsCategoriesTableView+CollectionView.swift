//
//  ThingsCategoriesTableView+CollectionView.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 05/04/22.
//

import UIKit

extension ThingsCategoriesTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        return CGSize(width: screenWidth, height: 80)
    }
}
