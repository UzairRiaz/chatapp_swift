//
//  ContentView.swift
//  ChatApp
//
//  Created by Uzair Riaz on 21/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messageManager = MessageManager()
    
    var body: some View {
        VStack{
            TitleRow()
                
            ScrollViewReader {proxy in
                ScrollView{
                    ForEach(messageManager.messages, id: \.id) {message in
                        MessageBubble(message: message)
                    }
                }
                .background(Color.white)
            .cornerRadius(30, corners: [.topLeft, .topRight])
            .onChange(of: messageManager.lastMessageId) { id in
                withAnimation {
                    proxy.scrollTo(id, anchor: .bottom)
                }
                
            }
            }
            MessageField()
                .environmentObject(messageManager)
        }
        .background(Color("Peach"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
