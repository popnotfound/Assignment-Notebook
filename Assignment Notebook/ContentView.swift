//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Aneesh Pushparaj on 7/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var items = ["0", "1", "2", "3"]
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    Text(item)
                }
                .onMove(perform: { indices, newOffset in
                    items.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    items.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("Classes", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


