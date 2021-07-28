//
//  AddAssignmentsView.swift
//  Assignment Notebook
//
//  Created by Aneesh Pushparaj on 7/28/21.
//

import Foundation
import SwiftUI

class AssignmentList: ObservableObject {
    @Published var items = [AssignmentItem(course: "Math", description: "Algebra", dueDate: Date()), AssignmentItem(course: "Science", description: "Chemistry", dueDate: Date()), AssignmentItem(course: "English", description: "Essay", dueDate: Date()), AssignmentItem(course: "History", description: "Read TextBook", dueDate: Date())]
 }
