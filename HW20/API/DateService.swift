//
//  DateService.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import Foundation

class DateService {
    func getDate(completion: @escaping (Date) -> Void) {
        completion(Date())
    }
}
