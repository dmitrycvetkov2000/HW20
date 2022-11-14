//
//  SecondPresenter.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import UIKit

protocol SecondScreenPresenterProtocol: AnyObject {
    func viewDidLoaded()
    func getLabelForCurrentTime(label: UILabel)
}

class SecondPresenter {
    weak var view: SecondScreenViewProtocol?
    var router: SecondScreenRouterProtocol
    var interactor: SecondScreenInteractorProtocol
    
    init(interactor: SecondScreenInteractorProtocol, router: SecondScreenRouterProtocol){
        self.interactor = interactor
        self.router = router
    }
}

extension SecondPresenter: SecondScreenPresenterProtocol {
    
    func viewDidLoaded() {
    }
    
    func getLabelForCurrentTime(label: UILabel) {
        label.text = interactor.getTextForCurrentTime()
    }
}
