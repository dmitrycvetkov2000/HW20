//
//  FirstScreenModuleBuilder.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import UIKit

class FirstScreenModuleBuilder {
    static func build() -> ViewController {
        let interactor = FirstScreenInteractor()
        let router = FirstScreenRouter()
        let presenter = FirstScreenPresenter(interactor: interactor, router: router)
        let vc = ViewController()
        vc.presenter = presenter
        presenter.view = vc
        interactor.presenter = presenter
        router.viewController = vc
        return vc
    }
}
