//
//  SecondModuleBuilder.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import UIKit

class SecondModuleBuilder {
    static func build(time: Int) -> SecondViewController {
        let interactor = SecondInteractor(time: time)
        let router = SecondRouter()
        let presenter = SecondPresenter(interactor: interactor, router: router)
        let vc = SecondViewController()
        vc.presenter = presenter
        presenter.view = vc
        interactor.presenter = presenter
        router.viewController = vc
        return vc
    }
}
