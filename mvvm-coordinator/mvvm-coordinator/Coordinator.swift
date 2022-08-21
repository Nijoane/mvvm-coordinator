//
//  Coordinator.swift
//  mvvm-coordinator
//
//  Created by Nicaely Joane on 21/08/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoodinator: Coordinator? { get set }
    var children: [ Coordinator] {get set }
    var navigationController: UINavigationController { get set }

    func start()
}
