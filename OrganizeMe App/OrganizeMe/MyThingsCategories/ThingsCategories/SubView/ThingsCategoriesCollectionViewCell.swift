//
//  ThingsCategoriesCollectionViewCell.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import Foundation
import UIKit

class ThingsCategoriesCollectionViewCell: UICollectionViewCell {
    //MARK: - IBOutlets
    @IBOutlet weak var categoryTitleLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!

    //MARK: - Properties

    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    //MARK: - Functions
    func setupView(with model: ThingsCategoriesModel) {
        categoryTitleLabel.text = model.categoryTitle
        categoryTitleLabel.numberOfLines = 2
        categoryImage.image = model.categoryImage
    }

    func setupCategoriesCard(with model: ThingsCategoriesModel) {
        contentView.layer.cornerRadius = 15
        contentView.layer.backgroundColor = model.categoryColor.cgColor
    }
}
