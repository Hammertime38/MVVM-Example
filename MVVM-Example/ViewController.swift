//
//  ViewController.swift
//  MVVM-Example
//
//  Created by John Hammerlund on 7/28/17.
//
//

import UIKit

class ViewController: UIViewController {

    private let viewModel: FestivalListViewModelType = FestivalListViewModel(dataStore: FestivalListDataStore())

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.fetchNextPage { _ in
            /// Update cells with cell view models
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

