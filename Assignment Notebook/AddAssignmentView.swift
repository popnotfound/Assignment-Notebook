//
//  AddAssignmentView.swift
//  Assignment Notebook
//
//  Created by Aneesh Pushparaj on 7/28/21.
//

import SwiftUI

struct AddAssignmentView: View {
    @ObservedObject var assignmentList: AssignmentList
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let courses = ["Math", "Science", "English", "History"] // Course List
    var body: some View {
        NavigationView {
            Form {
                Picker("Courses", selection: $course) { // Picker for the course you want
                    ForEach(Self.courses, id: \.self) { course in
                        Text(course)
                    }
                }
                TextField("Description", text: $description) // description for the assignment
                DatePicker("Due Date", selection: $dueDate, displayedComponents: .date) // data for the assignment
            }
            .navigationBarTitle("Add New Assignment", displayMode: .inline)
            .navigationBarItems(trailing: Button("Save") {
                if course.count > 0 && description.count > 0 { // logic for adding a new assignment
                    let item = AssignmentItem(id: UUID(), course: course, description: description, dueDate: dueDate)
                    assignmentList.items.append(item)
                    presentationMode.wrappedValue.dismiss()
                }
            })
        }
    }
}

struct AddAssignmentView_Previews: PreviewProvider {
    static var previews: some View {
        AddAssignmentView(assignmentList: AssignmentList())
    }
}
