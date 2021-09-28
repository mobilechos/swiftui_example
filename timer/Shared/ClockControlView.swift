//
//  ClockControlView.swift
//  ClockControlView
//
//  Created by HYENOK YANG on 2021/09/29.
//

import SwiftUI

struct ClockControlView: View {
    @ObservedObject var clockFormat = ClockFormat.instance
    
    var body: some View {
        VStack{
            Spacer()
            
            HStack(spacing:20){
                Button(action: {clockFormat.decreaseClockSize()}, label:{Text("-")})
                    .font(.largeTitle)
                    .frame(width:200, height:50)
                Button(action: {clockFormat.increaseClockSize()}, label:{Text("+")})
                    .font(.largeTitle)
                    .frame(width:200, height:50)
            }
        }
    }
}
