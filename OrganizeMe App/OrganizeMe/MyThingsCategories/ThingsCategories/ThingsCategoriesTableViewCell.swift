//
//  ThingsCategoriesTableViewCell.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import Foundation
import UIKit

class ThingsCategoriesTableViewCell: UITableViewCell {
    //MARK: - Outlets
    @IBOutlet var collectionView: UICollectionView!

    //MARK: - Life Cycle
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    //MARK: - Functions
    func setupViewCell() {
        contentView.backgroundColor = .clear
        collectionView.backgroundColor = #colorLiteral(red: 0.5921568627, green: 0.4470588235, blue: 0.6901960784, alpha: 0.8969759779)
        collectionView.layer.cornerRadius = 2

        let collection = UINib(nibName: "ThingsCategoriesCell", bundle: Bundle(for: ThingsCategoriesCollectionViewCell.self))
        collectionView.register(collection, forCellWithReuseIdentifier: ThingsCategoriesCollectionViewCell.reuseIdentifier)
        collectionView.reloadData()
    }
}


extension ThingsCategoriesTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.size.width
        return CGSize(width: screenWidth, height: 180)
    }
}
