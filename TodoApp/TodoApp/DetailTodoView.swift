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
            
            HStack {
                Text("Tags:")
                ForEach(todo.tags?.sorted(by: { $0.name < $1.name}) ?? []) { tag in
                    Text(tag.name)
                        .padding(5)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(tag.color.toSwiftColor(), lineWidth: 2.0)
                        }
                        .onTapGesture {
                            if let index = todo.tags?.firstIndex(where: {$0 == tag}) {
                                todo.tags?.remove(at: index)
                            }
                        }
                }
            }
            
            Button {
                let tag = Tag(name: "dummy tag", color: RGBColor(red: 1, green: 0, blue: 0, alpha: 1))
                todo.tags?.append(tag)
            } label: {
                Text("Add tag")
            }

        }
        .padding()
    }
}

/*
 #Preview {
 DetailTodoView()
 }
 */
