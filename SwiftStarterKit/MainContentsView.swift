//
//  MainContentsView.swift
//  SwiftStarterKit
//
//  Created by cyan-drop on 2020/05/25.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI

struct ViewDataList {
    var title: String
    var dataList: [ViewData]
}

struct MainContentsView: View {
    private var viewsSample: ViewsSample
    private var modifiersSample: ModifiersSample
    private var transitionsSample: TransitionsSample
    private var viewsList: [ViewDataList]
    private var modifiersList: [ViewDataList]
    private var transitionsList: [ViewDataList]
    
    init() {
        self.viewsSample = ViewsSample()
        self.modifiersSample = ModifiersSample()
        self.transitionsSample = TransitionsSample()
        
        self.viewsList = [
            ViewDataList(title: "Text", dataList: viewsSample.textSample),
            ViewDataList(title: "Button", dataList: viewsSample.buttonSample),
            ViewDataList(title: "DatePicker", dataList: viewsSample.datePickerSample),
            ViewDataList(title: "List", dataList: viewsSample.listSample),
            ViewDataList(title: "Picker", dataList: viewsSample.pickerSample),
            ViewDataList(title: "Slider", dataList: viewsSample.sliderSample),
            ViewDataList(title: "Stepper", dataList: viewsSample.stepperSample),
            ViewDataList(title: "TextField", dataList: viewsSample.textFieldSample),
            ViewDataList(title: "Toggle", dataList: viewsSample.toggleSample),
            ViewDataList(title: "Image", dataList: viewsSample.imageSample)
        ]
        self.modifiersList = [
            ViewDataList(title: "ActionSheet", dataList: modifiersSample.actionSheetSample),
            ViewDataList(title: "Alert", dataList: modifiersSample.alertSample),
            ViewDataList(title: "Popover", dataList: modifiersSample.popoverSample),
            ViewDataList(title: "Sheet", dataList: modifiersSample.sheetSample)
        ]
        self.transitionsList = [
            ViewDataList(title: "Navigation", dataList: transitionsSample.navigationSample),
            ViewDataList(title: "Popover", dataList: transitionsSample.popoverSample),
            ViewDataList(title: "Modal", dataList: transitionsSample.modalSample),
            ViewDataList(title: "Other", dataList: transitionsSample.otherSample)
        ]
    }
    
    
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Views")) {
                    ForEach(viewsList, id: \.title) {
                        sample in
                        NavigationLink(destination: LibraryDetailView(title: sample.title, sampleList: sample.dataList)) {
                            Text(sample.title)
                        }
                    }
                }
                Section(header: Text("Modifiers")) {
                    ForEach(modifiersList, id: \.title) { sample in
                        NavigationLink(destination: LibraryDetailView(title: sample.title, sampleList: sample.dataList)) {
                            Text(sample.title)
                        }
                    }
                }
                Section(header: Text("Transitions")) {
                    ForEach(transitionsList, id: \.title) { sample in
                        NavigationLink(destination: LibraryDetailView(title: sample.title, sampleList: sample.dataList)) {
                            Text(sample.title)
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Swift Starter Kit"))
        }
    }
}

struct MainContentsView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentsView()
    }
}
