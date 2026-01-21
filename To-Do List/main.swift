//
//  main.swift
//  To-Do List
//
//  Created by Тимур on 21.01.26.
//

var todoList: [String] = []

mainLoop: while true {
    print("\n1. Добавить задачу")
    print("2. Показать все задачи")
    print("3. Удалить задачу")
    print("4. Выйти")
    print("Выберите действие:")
    
    guard let choice = readLine() else {
        continue
    }
    
    switch choice {
    case "1":
        print("Введите задачу:")
        if let task = readLine(), !task.isEmpty {
            todoList.append(task)
            print("Задача добавлена!")
        }
        
    case "2":
        if todoList.isEmpty {
            print("Список задач пуст")
        } else {
            print("Ваши задачи:")
            for (index, task) in todoList.enumerated() {
                print("\(index + 1). \(task)")
            }
        }
        
    case "3":
        print("Введите номер задачи для удаления:")
        if let indexStr = readLine(),
           let index = Int(indexStr),
           index > 0 && index <= todoList.count {
            todoList.remove(at: index - 1)
            print("Задача удалена")
        } else {
            print("Неверный номер задачи")
        }
        
    case "4":
        print("До свидания!")
        break mainLoop
        
    default:
        print("Неверный выбор. Введите число от 1 до 4.")
    }
}
