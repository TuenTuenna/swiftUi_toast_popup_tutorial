//
//  ContentView.swift
//  Toast_Popup_tutorial
//
//  Created by Jeff Jeong on 2020/08/17.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    @State var shouldShowBottomSolidMessage : Bool = false
    
    @State var shouldShowBottomToastMessage : Bool = false
    
    @State var shouldShowTopSolidMessage : Bool = false
    
    @State var shouldShowTopToastMessage : Bool = false
    
    @State var shouldShowPopup : Bool = false
    
    func createBottomSolidMessage() -> some View {
        HStack(alignment: .center,spacing: 10){
                            
            Image(systemName: "book.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
//                        .background(Color.yellow)
            VStack(alignment: .leading, spacing: 0){
                Text("안내 메세지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                
                Text("토스트 메세지 입니다!asdfasdfaasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)
            }
//                    .background(Color.red)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
        .background(Color.purple)
    }
    
    func createTopSolidMessage() -> some View {
            HStack(alignment: .center,spacing: 10){
                                
                Image("jeongDaeRi")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
                VStack(alignment: .leading, spacing: 5){
                    Text("개발하는 정대리님의 메세지")
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                    
                    Text("안녕하세요 오늘도 빡코딩하고 계신가요? \n오늘은 토스트 메세지와 팝업에 대해 알아보겠습니다!")
                        .font(.system(size: 14))
                        .foregroundColor(Color.white)
                        Divider().opacity(0)
                }
    //                    .background(Color.red)
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .frame(width: UIScreen.main.bounds.width)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : 35)
            .background(Color.blue)
        }
    
    func createBottomToastMessage() -> some View {
        HStack(alignment: .top,spacing: 10){
                                    
                    Image("cat")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fill)
                        .offset(y: 10)
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                        
        //                        .background(Color.yellow)
                    VStack(alignment: .leading){
                        Text("내 고양이")
                            .fontWeight(.black)
                            .foregroundColor(Color.white)
                        
                        Text("토스트 메세지 입니다!asdfasdfaasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfaasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf")
                            
                            .font(.system(size: 14))
                            .foregroundColor(Color.white)
                        Divider().opacity(0)
                    }
        //                    .background(Color.red)
                }
                .padding(15)
                .frame(width: 300)
                .background(Color.green)
                .cornerRadius(20)
                
        
    }
    
    func createTopToastMessage() -> some View {
        HStack(alignment: .center,spacing: 10){
                                    
                    Image(systemName: "paperplane.fill")
                        .font(.system(size: 25))
                        .padding(.leading, 5)
                        .foregroundColor(Color.white)
                    VStack(alignment: .leading, spacing: 2){
                        Text("정대리님의 메세지")
                            .fontWeight(.black)
                            .foregroundColor(Color.white)
                        Text("오늘도 빡코딩하고 계신가요?")
                            .font(.system(size: 14))
                            .lineLimit(1)
                            .foregroundColor(Color.white)
                    }
                    .padding(.trailing, 15)
        //                    .background(Color.red)
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color.orange)
                .cornerRadius(25)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 30)
        
                    
    }
    
    func createPopup() -> some View {
        VStack(spacing: 10) {
                    Image("jeongDaeRi")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fit)
                        .frame(width: 100, height: 100)

                    Text("개발하는 정대리")
                        .foregroundColor(.white)
                        .fontWeight(.bold)

                    Text("한국에서 개발자로 살아남기!\n예전에 저처럼 프로그래머가 되고 싶지만\n그 길을 몰라 해매는 분들에게 도움 되고자\n이 채널을 운영하기 시작했습니다.\n\n프로그램에 관심 있는 분들이나 취업 준비생 분들께\n조금이나마 도움이 되었으면 합니다.\n아자 아자 화이팅!😍👍")
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
                        .multilineTextAlignment(.center)

                    Spacer().frame(height: 10)

                    Button(action: {
                        self.shouldShowPopup = false
                    }) {
                        Text("닫기")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                    }
                    .frame(width: 100, height: 40)
                    .background(Color.white)
                    .cornerRadius(20.0)
                }
        //        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                    .padding(.horizontal, 10)
                .frame(width: 300, height: 400)
                .background(Color(hexcode: "8227b0"))
                .cornerRadius(10.0)
                .shadow(radius: 10)
    }
    
    var body: some View {
        ZStack{
            VStack(spacing: 10){
                
                Button(action: {
                    self.shouldShowBottomSolidMessage = true
                }, label: {
                    Text("바텀솔리드메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                })

                Button(action: {
                    self.shouldShowBottomToastMessage = true
                }, label: {
                    Text("바텀토스트메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })

                Button(action: {
                       self.shouldShowTopSolidMessage = true
                   }, label: {
                       Text("탑솔리드메세지")
                           .font(.system(size: 25))
                           .fontWeight(.bold)
                           .foregroundColor(Color.white)
                           .padding()
                           .background(Color.blue)
                           .cornerRadius(10)
                   })

                Button(action: {
                    self.shouldShowTopToastMessage = true
                }, label: {
                    Text("탑토스트메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                })

                Button(action: {
                    self.shouldShowPopup = true
                }, label: {
                    Text("팝업")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color(hexcode: "8227b0"))
                        .cornerRadius(10)
                })

            } // Vstack
        }
            .edgesIgnoringSafeArea(.all)
            // Zstack
            .popup(isPresented: $shouldShowBottomSolidMessage, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
                self.createBottomSolidMessage()
            })
            .popup(isPresented: $shouldShowBottomToastMessage, type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
                self.createBottomToastMessage()
            })
            .popup(isPresented: $shouldShowTopSolidMessage, type: .toast, position: .top, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
                self.createTopSolidMessage()
            })
            .popup(isPresented: $shouldShowTopToastMessage, type: .floater(verticalPadding: 20), position: .top, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
                self.createTopToastMessage()
            })
            .popup(isPresented: $shouldShowPopup, type: .default, position: .bottom, animation: .spring(), closeOnTap: false, closeOnTapOutside: false, view: {
                self.createPopup()
            })
        
        
    }
}

extension Color {
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
