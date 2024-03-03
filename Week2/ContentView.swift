//
//  ContentView.swift
//  MyFirstApp
//
//  Created by 이하빈 on 2024/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var img: String? = nil
    @State var name: String? = nil
    
    var body:some View{
        VStack{
            if let name=name{
                Text("선택된 항목은 \(name)입니다.")
            }
            if let img=img{
                Image(img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(20)
            }
            HStack{
                Button {
                    img="rock"
                    name="주먹"
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100,height: 100)
                            .foregroundColor(.red)
                        Text("주먹")
                            .foregroundColor(.white)
                    }
                }
                Button {
                    img="scissors"
                    name="가위"
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100,height: 100)
                        Text("가위")
                            .foregroundColor(.white)
                    }
                }
                Button {
                    img="paper"
                    name="보자기"
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100,height: 100)
                            .foregroundColor(.yellow)
                        Text("보자기")
                            .foregroundColor(.white)
                    }
                }
            }
            Button {
                img=nil
                name=nil
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 300,height: 100)
                        .foregroundColor(.green)
                    Text("그만하기")
                        .foregroundColor(.white)
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
