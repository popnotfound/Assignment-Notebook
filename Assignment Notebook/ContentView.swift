//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Aneesh Pushparaj on 7/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var assignmentItem = [AssignmentItem(classes: "Math", description: "Algebra", dueDate: Date()), AssignmentItem(classes: "Science", description: "Chemistry", dueDate: Date()), AssignmentItem(classes: "English", description: "Essay", dueDate: Date()), AssignmentItem(classes: "History", description: "Read TextBook", dueDate: Date())]
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentItem) { item in
                    Text(item.description)
                }
                .onMove(perform: { indices, newOffset in
                    assignmentItem.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    assignmentItem.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("Assignment Notebook", displayMode: .inline)
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AssignmentItem: Identifiable {
    var id = UUID()
    var classes = String()
    var description = String()
    var dueDate = Date()
}


