//
//  TaskCategoriesRow.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 14/04/22.
//

import SwiftUI

struct TaskCategoriesRow: View {
    @State var showCreateNewTaskModal = false
    @State var taskName: String = ""

    var categories: [TaskCategory]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Add new:")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 5) {
                    ForEach(categories) { item in
                        TasksCategories(categoryName: item.description)
                            .sheet(isPresented: $showCreateNewTaskModal) {
                                AddNewTask(taskName: taskName)
                            }.onTapGesture {
                                taskName = item.description
                                showCreateNewTaskModal = true
                            }
                    }
                }.padding(.leading, 15)
            }
        }.frame(height: 200)
    }
}

struct TaskCategoriesList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TaskCategoriesRow(categories: Array(categories.prefix(4)))
        }
    }
}
