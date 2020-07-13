//
//  BaseListView.swift
//  SwiftStarterKit
//
//  Created by cyan-drop on 2020/07/13.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct BaseListView: View {
    //Listに表示するテキスト
    @State private var textList = ["A", "B", "C"]
    
    var body: some View {
        VStack{
            //EditButtonを右寄せに
            HStack{
                Spacer()
                EditButton()
                    .padding(.trailing, 30.0)
            }
            List{
                //TextListの要素分Rowを作成
                //配列内のの各要素 -> text
                ForEach(textList, id: \.self){ text in
                   Text(text)
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
        }
    }
    
    //選択された要素を消去
    func delete(offsets: IndexSet){
        textList.remove(atOffsets: offsets)
    }
    
    //選択された要素のindex変更
    func move(offsets: IndexSet, index: Int){
        textList.move(fromOffsets: offsets, toOffset: index)
    }
}
    

struct BaseListView_Previews: PreviewProvider {
    static var previews: some View {
        BaseListView()
    }
}


