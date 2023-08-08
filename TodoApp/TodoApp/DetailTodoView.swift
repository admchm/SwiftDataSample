//
//  DetailTodoView.swift
//  TodoApp
//
//  Created by Adam Chomicki on 08/08/2023.
//

import SwiftUI

struct DetailTodoView: View {
    let todo: Todo
    
    var body: some View {
        VStack {
            Text(todo.name)
            
            Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle")
                .foregroundStyle(todo.isDone ? .green : .gray)
        }
        
    }
}

/*
#Preview {
    DetailTodoView()
}
*/
