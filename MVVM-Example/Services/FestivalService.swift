//
//  FestivalService.swift
//  MVVM-Example
//
//  Created by John Hammerlund on 7/28/17.
//
//

import Foundation

enum SortType {
    case ascending
    case descending
}

protocol FestivalServiceType {

    func fetch(startDate: Date, count: Int, sorted sortType: SortType, completion: @escaping ([Festival], Error?) -> Void)

}

class FestivalService: FestivalServiceType {

    static let shared = FestivalService()

    func fetch(startDate: Date, count: Int, sorted sortType: SortType, completion: @escaping ([Festival], Error?) -> Void) {

        /// Hit some web API
        /// Fire completion closure with deserialized Festivals or an error
        
    }
}
