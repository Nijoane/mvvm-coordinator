//
//  ThirdViewModel.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 21/08/22.
//

import Foundation

class ThirdViewModel {
    weak var appCoordinator: AppCoordinator?

    func goToFirstView() {
        appCoordinator?.goToFirstPage()
    }
}
