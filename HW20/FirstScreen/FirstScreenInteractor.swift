//
//  FirstScreenInteractor.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import Foundation

protocol FirstScreenInteractorProtocol: AnyObject {
    func loadData()
    var time: Int {get set}
}

class FirstScreenInteractor: FirstScreenInteractorProtocol {
    
    weak var presenter: FirstScreenPresenterProtocol?
    
    let dateService = DateService()
    var time: Int = 0
    
    func loadData() {
        dateService.getDate { [weak self] date in
            var formatter = DateFormatter()
            formatter.dateFormat = "HH"
            var formattedDate = formatter.string(from: date as Date)
            self?.time = Int(formattedDate) ?? 0
            
            self?.presenter?.didLoad(date: date.description)
        }
    }
}
