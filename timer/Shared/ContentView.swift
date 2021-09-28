//
//  ContentView.swift
//  Shared
//
//  Created by HYENOK YANG on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ClockView()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
