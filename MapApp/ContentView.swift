//
//  ContentView.swift
//  MapApp
//
//  Created by 渡邊丈洋 on 2020/10/09.
//  Copyright © 2020 渡邊丈洋. All rights reserved.
//
import MapKit
import SwiftUI

protocol Shef {
    var name: String { get set }
    var career: Int { get set }
    func cookWithEgg() -> String
}

struct JapaneseShef: Shef {
    var name: String
    
    var career: Int
    
    func cookWithEgg() -> String {
        return "卵焼き"
    }
    
}

struct ItalianShef: Shef {
    var name: String
    
    var career: Int
    
    func cookWithEgg() -> String {
        return "カルボナーラ"
    }
    
}

struct Eraihito {
    var name: String
    var age: Int
    var job: String
    var shef: Shef
    
    func diner() {
        shef.cookWithEgg()
    }
}


struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        MapView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
