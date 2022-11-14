//
//  SecondInteractor.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import UIKit

protocol SecondScreenInteractorProtocol: AnyObject {
    func getTextForCurrentTime() -> String
}

class SecondInteractor: SecondScreenInteractorProtocol {
        
    weak var presenter: SecondScreenPresenterProtocol?

    let time: Int
    
    init(time: Int) {
        self.time = time
    }
    
    func getTextForCurrentTime() -> String{
        switch time {
        case 0...6:
            return "Доброй ночи"
        case 7...12:
            return "Доброе утро"
        case 13...18:
            return "Добрый день"
        case 19...23:
            return "Добрый вечер"
            
        default: break
        }
        return "No" 
    }
}
