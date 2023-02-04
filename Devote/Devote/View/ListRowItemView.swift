//
//  ListRowItemView.swift
//  Devote
//
//  Created by Алина on 04.02.2023.
//

import SwiftUI

struct ListRowItemView: View {
    
    // MARK: - PROPERTIES
    // FETCHING DATA
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var item: Item
    
    // MARK: - BODY
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .padding(.vertical, 12)
                .animation(.default)
        }//: TOGGLE
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }
    }
}
