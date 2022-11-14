//
//  FirstScreenRouter.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import Foundation

protocol FirstScreenRouterProtocol: AnyObject {
    func openSecond(for time: Int)
}

class FirstScreenRouter: FirstScreenRouterProtocol {
    weak var viewController: ViewController?
    func openSecond(for time: Int) {
        let vc = SecondModuleBuilder.build(time: time)
        viewController?.present(vc, animated: true)
    }
}
