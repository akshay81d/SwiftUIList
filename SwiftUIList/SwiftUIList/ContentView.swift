//
//  ContentView.swift
//  SwiftUIList
//
//  Created by Akshay Dochania on 09/05/20.
//  Copyright © 2020 app-developerz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let monuments = Monument.all()
    
    var body: some View {
        NavigationView {
                List(self.monuments, id: \.name) { monument in
                    NavigationLink(destination: MonumentDetail(monument: monument)) {
                    MonumentCell(monument: monument)
                    }
                }
            .navigationBarTitle("Monuments")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MonumentCell: View {
    let monument: Monument
    var body: some View {
        HStack {
            Image(monument.imageURL)
                .resizable()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(12)
            Text(monument.name)
                .font(.title)
            Text(String(format: "(%.0f)", monument.year))
            
        }
    }
}
