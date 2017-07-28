//
//  FestivalListViewModel.swift
//  MVVM-Example
//
//  Created by John Hammerlund on 7/28/17.
//
//

import UIKit

protocol FestivalListViewModelType {

    init(dataStore: FestivalListDataStore)

    func fetchNextPage(completion: @escaping ([FestivalCellViewModelType], Error?) -> Void)
}

struct FestivalListViewModel: FestivalListViewModelType {

    private let dataStore: FestivalListDataStore

    init(dataStore: FestivalListDataStore) {
        self.dataStore = dataStore
    }

    func fetchNextPage(completion: @escaping ([FestivalCellViewModelType], Error?) -> Void) {
        dataStore.fetchNextPage { (festivals, error) in
            let viewModels = festivals.map {
                FestivalCellViewModel(headerText: $0.name, subText: $0.description)
            }
            completion(viewModels, error)
        }
    }

}
