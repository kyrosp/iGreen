//
//  TaskEditView.swift
//  iGreen_TE
//
//  Created by Alfonso Formisano on 26/10/2020.
//

import SwiftUI


struct TaskEditView: View {
    @State var task = [
        Task(name: "", servingProduct: []),
        Task(name: "", servingProduct: []),
        Task(name: "", servingProduct: []),
        Task(name: "", servingProduct: []),
        Task(name: "", servingProduct: []),
        Task(name: "", servingProduct: []),
        Task(name: "", servingProduct: [])
    ]
    var body: some View {
        NavigationView{
        Form {

            Section(header: Text("task of the week")) {
                
                MultiSelector(
                    label: Text("\(weekDayNumbers[0])"),
                    options: allGoals,
                    optionToString: { $0.name },
                    selected: $task[0].servingProduct
                )
                
                MultiSelector(
                    label: Text("\(weekDayNumbers[1])"),
                    options: allGoals,
                    optionToString: { $0.name },
                    selected: $task[1].servingProduct
                )
                
                MultiSelector(
                    label: Text("\(weekDayNumbers[2])"),
                    options: allGoals,
                    optionToString: { $0.name },
                    selected: $task[2].servingProduct
                )
                MultiSelector(
                    label: Text("\(weekDayNumbers[3])"),
                    options: allGoals,
                    optionToString: { $0.name },
                    selected: $task[3].servingProduct
                )
                MultiSelector(
                    label: Text("\(weekDayNumbers[4])"),
                    options: allGoals,
                    optionToString: { $0.name },
                    selected: $task[4].servingProduct
                )
                MultiSelector(
                    label: Text("\(weekDayNumbers[5])"),
                    options: allGoals,
                    optionToString: { $0.name },
                    selected: $task[5].servingProduct
                )
                MultiSelector(
                    label: Text("\(weekDayNumbers[6])"),
                    options: allGoals,
                    optionToString: { $0.name },
                    selected: $task[6].servingProduct
                )
            }
            
            
        }.navigationTitle("Remember it")
        }
    }
}

struct TaskEditView_Previews: PreviewProvider {
    static var previews: some View {
        
            TaskEditView()
        .previewDevice("iPhone 11 Pro")
    }
}


let allGoals: [Product] =
     [Product(name: "Plastic&Metal", code: "P"), Product(name: "Glass", code: "V"), Product(name: "Paper&Cardboard", code: "C"), Product(name: "Organic", code: "O"), Product(name: "Undifferentiated", code: "I")]

let weekDayNumbers = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
]


