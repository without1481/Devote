//
//  DevoteWidgetBundle.swift
//  DevoteWidget
//
//  Created by Petr Yanenko on 10.02.2023.
//

import WidgetKit
import SwiftUI

@main
struct DevoteWidgetBundle: WidgetBundle {
    var body: some Widget {
        DevoteWidget()
        DevoteWidgetLiveActivity()
    }
}
