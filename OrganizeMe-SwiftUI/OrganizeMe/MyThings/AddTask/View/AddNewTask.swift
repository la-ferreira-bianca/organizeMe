//
//  AddNewTask.swift
//  OrganizeMe
//
//  Created by Bianca Ferreira on 14/04/22.
//

import SwiftUI

struct AddNewTask: View {
    @State var taskName: String
    @State var taskTitle: String = ""
    @State var taskDescription: String = ""
    @State var taskColor: String = ""

    @StateObject var newTask = AddNewTaskViewModel()

    var body: some View {
        VStack {
            VStack(alignment: .leading){
                Text("Add new \(taskName):")
                    .font(.title3)
                    .padding(.leading, 15)
                Divider()
                VStack {
                    TextField("Title", text: $taskTitle)
                        .disableAutocorrection(true)
                    Divider()
                    TextField("Description", text: $taskDescription)
                        .disableAutocorrection(true)
                }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 5, trailing: 15))
                .textFieldStyle(.roundedBorder)
            }
            VStack (alignment: .leading){
                Text("Task color: ")
                    .font(.subheadline)
                    .padding(.leading, 15)
                Divider()
                VStack(alignment: .leading) {
                    Picker("Task color", selection: $taskColor) {
                        Text("Green").tag("Green")
                        Text("Blue").tag("Blue")
                        Text("Orange").tag("Orange")
                        Text("Red").tag("Red")
                    }.pickerStyle(.segmented)
                        .padding(.all, 15)
                }
            }.padding(.top, 20)

            HStack(alignment: .center) {
                Button(action: didTapCreateButton) {
                    Text("Create")
                }
                .buttonStyle(.bordered)
                
                Button(action: didTapCancelButton) {
                    Text("Cancel")
                }
                .buttonStyle(.bordered)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
    }

    //TODO: - Move this functions to a viewmodel class
    func didTapCreateButton() {
        print("\(taskColor)")
        print("\(taskTitle)")
        print("\(taskDescription)")
    }

    func didTapCancelButton() {
        
    }


}

struct AddNewTask_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTask(taskName: "Teste")
    }
}
