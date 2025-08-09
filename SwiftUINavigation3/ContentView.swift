//
//  ContentView.swift
//  SwiftUINavigation3
//
//  Created by Lena Hunanian on 08.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(fruits){ fruit in
                NavigationLink(fruit.name){
                    DetailView(fruit: fruit)
                }
            }
            .navigationTitle("Fruits")
        }
        
    }
}


struct DetailView: View {
    let fruit: Fruit
    @State var showModal: Bool = false
    
    init(fruit: Fruit) {
        self.fruit = fruit
    }
    
    var body: some View {
        VStack {
            Text(fruit.name)
                .font(.title)
            Button("Show More Info") {
                showModal = true
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showModal) {
                MoreInfoView(fruit: fruit)
            }
        }
        .padding()
        .navigationTitle(fruit.name)
    }
}

struct MoreInfoView: View {
    let fruit: Fruit
    
    var body: some View {
        VStack(spacing: 20) {
            Text("More about \(fruit.name)")
                .font(.title)
            Text("This is where you can put more interesting details about \(fruit.name).")
                .font(.headline)
                .padding()
            Text(fruit.info)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
