//
//  MyThingsViewController+CollectionView.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 04/04/22.
//

import UIKit

extension MyThingsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.getThingsCategories().count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: ThingsCategoriesCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        let categories = viewModel.getThingsCategories()
        cell.setupView(with: categories[indexPath.row])
        cell.setupCategoriesCard(with: categories[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            viewModel.didTapAddTask()
        case 1:
            viewModel.didTapAddReminder()
        case 2:
            viewModel.didTapAddPayment()
        case 3:
            viewModel.didTapAddOther()
        default:
            print("default")
        }
    }
}

