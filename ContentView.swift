//
//  ContentView.swift
//  GPA
//
//  Created by Ronnakorn Fahkiat on 7/5/2566 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var resultgpa:String = "GPA"
    @State var math:String = ""
    @State var thai:String = ""
    @State var eng:String = ""
    @State var sci:String = ""
    
    var body: some View {
        VStack {
            VStack {

                            VStack {
                                Text(resultgpa).font(.largeTitle)
                                    .padding()
                            }
                            HStack {
                                Text("ภาษาไทย")
                                Text("หน่วยกิต 4.0")
                                TextField("เกรดที่ได้", text: $thai).keyboardType(.numberPad)
                            }
                            HStack {
                                Text("คณิตศาสตร์")
                                Text("หน่วยกิต 4.0")
                                TextField("เกรดที่ได้", text: $math).keyboardType(.numberPad)
                            }
                        
                        HStack {
                            Text("อังกฤษ")
                            Text("หน่วยกิต 4.0")
                            TextField("เกรดที่ได้", text: $eng).keyboardType(.numberPad)
                        }
                    
                    HStack {
                        Text("วิทยาศาสตร์")
                        Text("หน่วยกิต 4.0")
                        TextField("เกรดที่ได้", text: $sci).keyboardType(.numberPad)
                    }
                
                
                
            }.padding()
            Button("คำนวณ") {
                let mathGrade = Double(math) ?? 0.0
                let thaiGrade = Double(thai) ?? 0.0
                let engGrade = Double(eng) ?? 0.0
                let sciGrade = Double(sci) ?? 0.0
                
                let gpa = (mathGrade + thaiGrade + engGrade + sciGrade) / 4.0
                resultgpa = String(format: "GPA: %.2f", gpa)
            }

        }}
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
