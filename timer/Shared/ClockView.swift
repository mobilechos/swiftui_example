//
//  ClockView.swift
//  ClockView
//
//  Created by HYENOK YANG on 2021/09/29.
//

import SwiftUI

struct ClockView: View {
    @State private var clock = Date()
    @ObservedObject var clockFormat = ClockFormat.instance
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            Text("\(clock, formatter: clockFormat.formatter)")
                .onReceive(timer) { input in
                    clock = input
                }
                .font(.system(size:clockFormat.size))
            ClockControlView()
        }
    }
    
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView()
    }
}
