//
//  ClockFormat.swift
//  ClockFormat
//
//  Created by HYENOK YANG on 2021/09/29.
//

import Foundation

class ClockFormat: ObservableObject{
    static let instance = ClockFormat()
    
    @Published var size = 20.0
    let formatter = DateFormatter()
    
    private init(){
        formatter.dateFormat = "HH:mm:ss"
    }
    func increaseClockSize(){ size += 5.0 }
    func decreaseClockSize(){ if (size > 5.0) {size -= 5.0} }
}
