//
//  DetailTodoView.swift
//  TodoApp
//
//  Created by Adam Chomicki on 08/08/2023.
//

import SwiftUI

struct DetailTodoView: View {
    @Bindable var todo: Todo
    
    var body: some View {
        VStack {
            TextField("new todo", text: $todo.name)
                .textFieldStyle(.roundedBorder)
            
            Toggle(todo.isDone ? "Done" : "Open" , isOn: $todo.isDone)
        }
                .padding()
    }
}

/*
#Preview {
    DetailTodoView()
}
*/
