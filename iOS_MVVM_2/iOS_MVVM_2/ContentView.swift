//
//  ContentView.swift
//  iOS_MVVM_2
//
//  Created by YunHo on 2021/04/14.
//

import SwiftUI

// Model
struct Person {
    var name: String
    var age: Int
}


// ViewModel
class ContentViewModel: ObservableObject { // ObservableObject -> 프로토콜 관찰 가능 객체
    @Published private var alice = Person(name: "Alice", age: 25)
    // @Published -> view에서 변경된 것을 감지, struct가 아닌 class 에서만 가능
    
    // private 로 인한 getter
    var name: String{
        alice.name
    }
    var age: String{
        "2525"
    }
    
    func changeName(_ name:String){
        alice.name = name
    }
}


// View
struct ContentView: View {
//    let alice = Person(name: "Alice", age: 25)
    
//    @ObservedObject var viewModel: ContentViewModel
    @StateObject var viewModel = ContentViewModel() // "=" 으로 쓰려면 ObservedObject 객체 대신 상태객체(StateObject) 사용
    
    var body: some View {
        VStack{
//            Text(alice.name)
//                .padding()
//            Text(String(alice.age))
//                .padding()
            
            Text(viewModel.name).padding()
            Text(viewModel.age).padding()
            
            Button("Change Name"){
                viewModel.changeName("YUN HO")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
