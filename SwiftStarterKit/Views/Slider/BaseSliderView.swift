//
//  BaseSliderView.swift
//  SwiftStarterKit
//
//  Created by cyan-drop on 2020/07/13.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct BaseSliderView: View {
    //Sliderの現在値を取得
    @State private var count: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                //countに値を入れ, 選択範囲は0~10, 1目盛の値は1
                Slider(value: $count, in: 0...10, step: 1)
                    .padding(.horizontal, 20.0)
            }
            Text("現在の値:  \(Int(count))")
        }
    }
}

struct BaseSliderView_Previews: PreviewProvider {
    static var previews: some View {
        BaseSliderView()
    }
}
