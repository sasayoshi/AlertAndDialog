//
//  ContentView.swift
//  Part9
//
//  Created by sasayoshi on 2024/01/21.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    @State var isShowDialog = false
    
    var body: some View {
        VStack {
            Button("アラート"){
                isShowAlert = true
            }
        }
        .padding()
        Button("ダイアログ"){
            isShowDialog = true
            
        }
        .alert("本当に削除しますか", isPresented: $isShowAlert){
            Button("削除する",role: .destructive){
                
            }
            Button("キャンセル", role: .cancel){
                
            }
        } message:{
          Text("一度削除したらもとに戻すことはできません")
        }
        .confirmationDialog("タイトル", isPresented: $isShowDialog, titleVisibility: .visible) {
            Button("選択肢1"){
                
            }
            Button("キャンセル", role: .cancel){
                
            }
        } message: {
            Text("ここにメッセージ")
        }
    }
}

#Preview {
    ContentView()
}
