//
//  ButtonList.swift
//  SwiftStarterKit
//
//  Created by cyan-drop on 2020/06/23.
//  Copyright © 2020 Cyan. All rights reserved.
//

import SwiftUI


struct ViewsSample {
    var textSample: [ViewData] = [
    ViewData(name: "BaseTextView", view: AnyView(BaseTextView()))
    ]
    
    var buttonSample: [ViewData] = [
        ViewData(name: "BaseButtonView", view: AnyView(BaseButtonView()))
    ]
   
    var datePickerSample: [ViewData] = []
    var listSample: [ViewData] = [
        ViewData(name: "BaseListView", view: AnyView(BaseListView()))
    ]
    var pickerSample: [ViewData] = []
    var sliderSample: [ViewData] = [
        ViewData(name: "BaseSliderView", view: AnyView(BaseSliderView()))
    ]
    var stepperSample: [ViewData] = []
    var textFieldSample: [ViewData] = []
    var toggleSample: [ViewData] = []
    var imageSample: [ViewData] = []
    
}

