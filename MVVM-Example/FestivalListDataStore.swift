//
//  FestivalListDataStore.swift
//  MVVM-Example
//
//  Created by John Hammerlund on 7/28/17.
//
//

import Foundation

protocol FestivalListDataStoreType {

    var festivals: [Festival] { get }

    func fetchNextPage(completion: @escaping ([Festival], Error?) -> Void)

}

class FestivalListDataStore: FestivalListDataStoreType {

    var festivals: [Festival] = []

    func fetchNextPage(completion: @escaping ([Festival], Error?) -> Void) {
        let festivalService = DependencyManager.shared.resolve(FestivalServiceType.self)

        /// Obviously not the right logic, but you get the picture
        festivalService.fetch(startDate: Date(), count: 50, sorted: .descending) { [weak self] (festivals, error) in
            self?.festivals.append(contentsOf: festivals)
            completion(festivals, error)
        }
    }

}
