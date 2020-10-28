//
//  BaseSliderView.swift
//  SwiftStarterKit
//
//  Created by 丸山翔太郎 on 2020/10/27.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct BaseSliderView: View {
    @State private var currentValue: Double = 5
        var body: some View {
            VStack {
                Text("value：\(String(format:"%.2f",currentValue))") //formatで表示を小数点第二位までに
                    .font(.system(.largeTitle, design: .monospaced)) //等幅フォントでラベルの揺れを抑制
                
                Slider(value: $currentValue, in: 0...10) // 0から10の範囲を指定
            }.padding()
        }
}

struct BaseSliderView_Previews: PreviewProvider {
    static var previews: some View {
        BaseSliderView()
    }
}
