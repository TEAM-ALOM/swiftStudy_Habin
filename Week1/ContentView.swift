//
//  ContentView.swift
//  MyFirstApp
//
//  Created by 이하빈 on 2024/02/24.
//

import SwiftUI

struct IOS:Hashable{
    var name:String
    var position:String
}

struct ContentView: View {
    @State var list=[
        IOS(name:"김도형",position:"리드멘토")
        ,IOS(name:"정성윤",position:"리드멘토")
        ,IOS(name:"은서우",position:"멘토")
        ,IOS(name:"박근경",position:"멘토")
        ,IOS(name:"황은지",position:"멘티")
        ,IOS(name:"이창희",position:"멘티")
        ,IOS(name:"이하빈",position:"멘티")
        ,IOS(name:"정수호",position:"멘티")
        ,IOS(name:"김학규",position:"멘티")
    ]
    
    var body:some View{
        List{
            ForEach(list,id:\.self){ item in
                HStack{
                    if item.position=="리드멘토"{
                        Text("🚗")
                    }else if item.position=="멘토"{
                        Text("🚕")
                    }else if item.position=="멘티"{
                        Text("🚙")
                    }
                    Text(item.name)
                    Text(item.position)
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
