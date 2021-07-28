//
//  AddAssignmentsView.swift
//  Assignment Notebook
//
//  Created by Aneesh Pushparaj on 7/28/21.
//

import Foundation
import SwiftUI

class addAssignments: ObservableObject {
    @Published var items = [AssignmentItem(classes: "Math", description: "Algebra", dueDate: Date()), AssignmentItem(classes: "Science", description: "Chemistry", dueDate: Date()), AssignmentItem(classes: "English", description: "Essay", dueDate: Date()), AssignmentItem(classes: "History", description: "Read TextBook", dueDate: Date())]
 }
