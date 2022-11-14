//
//  FirstScreenPresenter.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import Foundation

protocol FirstScreenPresenterProtocol: AnyObject {
    func viewDidLoaded()
    func didLoad(date: String?)
    func didTapNextButton()
}

class FirstScreenPresenter {
    weak var view: FirstScreenViewProtocol?
    var router: FirstScreenRouterProtocol
    var interactor: FirstScreenInteractorProtocol
    
    init(interactor: FirstScreenInteractorProtocol, router: FirstScreenRouterProtocol){
        self.interactor = interactor
        self.router = router
    }
}

extension FirstScreenPresenter: FirstScreenPresenterProtocol {
    func viewDidLoaded() {
        interactor.loadData()
    }
    
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date")
    }
    
    func didTapNextButton() {
        let time = interactor.time
        router.openSecond(for: time)
    }
}
