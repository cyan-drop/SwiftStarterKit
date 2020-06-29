//
//  LibraryDetailView.swift
//  SwiftStarterKit
//
//  Created by cyan-drop on 2020/05/28.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct LibraryDetailView: View {
    var title: String
    var sampleList: [ViewData]
    
    var body: some View {
        List{
            ForEach(sampleList, id: \.name) { views in
                NavigationLink(destination: views.view) {
                    Text(views.name)
                }
            }
        }
        .navigationBarTitle(Text(title))
    }  
}

struct LibraryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryDetailView(title: "Button", sampleList: ViewsSample().buttonSample)
    }
}
