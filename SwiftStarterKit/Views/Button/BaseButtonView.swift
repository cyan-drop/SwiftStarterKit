//
//  BaseButtonView.swift
//  SwiftStarterKit
//
//  Created by cyan-drop on 2020/06/11.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct BaseButtonView: View {
    //押した回数を格納する（@Stateをつけることで自動更新）
    @State private var pushCount: Int = 0
    
    var body: some View {
        VStack {
            //押す度にpushCountの値を１増やす
            Button(action: {
                self.pushCount += 1
            }) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            }
            .padding(.all, 15.0)
            .background(Color.blue)
            .foregroundColor(Color.white)
            //角丸を作成
            .cornerRadius(10.0)
            Text("\(pushCount)回押しました！")
                .multilineTextAlignment(.center)
                .padding(.top, 20.0)
        }
    }
}

struct BaseButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BaseButtonView()
    }
}
