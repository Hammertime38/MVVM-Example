//
//  FestivalCellViewModel.swift
//  MVVM-Example
//
//  Created by John Hammerlund on 7/28/17.
//
//

import UIKit

protocol FestivalCellViewModelType {

    var headerText: String { get }
    var subText: String { get }

}

struct FestivalCellViewModel: FestivalCellViewModelType {

    let headerText: String
    let subText: String

    init(headerText: String, subText: String) {
        self.headerText = headerText
        self.subText = subText
    }

}
