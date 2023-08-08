//
//  TodoRow.swift
//  TodoApp
//
//  Created by Adam Chomicki on 08/08/2023.
//

import SwiftUI

struct TodoRow: View {
    let todo: Todo
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(todo.isDone ? .green : .gray)
                Text(todo.name)
            }
            Text(todo.creationDate, format: Date.FormatStyle(date: .numeric, time: .standard))
        }
    }
}

/*
#Preview {
    TodoRow()
}
*/
