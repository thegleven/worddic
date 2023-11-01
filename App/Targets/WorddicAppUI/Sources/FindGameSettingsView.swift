//
//  FindGameSettingsView.swift
//  WorddicAppUI
//
//  Created by theshamuel on 28/10/2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI
import SwiftData

struct FindGameSettingsView: View {
    
    @Environment(\.modelContext) private var context
    
    @Query private var items: [FindGameDataItem]
    
    var body: some View {
        
        ZStack {
            //fon
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Tap on this button to add data")
                Button("Add an item") {
                    addItem()
                    
                }
                
                List {
                    ForEach (items) { item in
                        
                        HStack {
                            Text(item.name)
                            Spacer()
                            Button {
                                updateItem(item)
                            } label: {
                                Image(systemName: "arrow.triangle.2.circlepath")
                            }
                        }
                        
                    }
                    .onDelete {
                        indexes in
                        for index in indexes {
                            deleteItem(items[index])
                        }
                    }
                }
               
            }
            .padding()
        }
        
        
    }
    func addItem() {
        //Create the item
        let item = FindGameDataItem(name: "Test Item")
        //Add the item to the data context
        context.insert(item)
    }
    
    func deleteItem(_ item: FindGameDataItem) {
        context.delete(item)
    }
    
    func updateItem(_ item: FindGameDataItem) {
        // Edit the item data
        item.name = "Updated Test Item"
        //Save the context
        try? context.save()
    }
}

#Preview {
    FindGameSettingsView()
}
