//
//  ContentView.swift
//  Counter
//
//  Created by StudentAM on 2/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    var body: some View {
        VStack {
            Text("Click button below to change the counter")
                .padding()
            HStack{
                Text("\(count)")
                //Picker(selection:$selectedOption, label: Text("")){
                    //ForEach(option.indices, id: \.self) { index in
                      //  Text(option[index])
                    //}
               // }
                //.pickerStyle(.wheel)
                
            }
            HStack{
                Button(action:increment, label: {
                    Text("Increment")
                        .padding(9)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                })
                Button(action:decrement, label: {
                    Text("Decrements")
                        .padding(9)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                })
            } .padding()
        }
        .padding()
    }
    func increment(){
        if count<50{
            count+=1
        }
    }
    func decrement(){
        if count>0{
            count-=1
        }
    }
}

#Preview {
    ContentView()
}
