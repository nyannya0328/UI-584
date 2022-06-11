//
//  ContentView.swift
//  UI-584
//
//  Created by nyannyan0328 on 2022/06/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
                CustomNavigationLink(title: "A", image: "p1") {
                    
                   Home()
                }
                
                CustomNavigationLink(title: "A", image: "p2") {
                    
                   Home2()
                }
                
                CustomNavigationLink(title: "A", image: "p3") {
                    
                   Home3()
                }
                
        
            
            
            
            
            
            
        }
 }
    @ViewBuilder
    func CustomNavigationLink<Content : View>(title : String,image : String,content : @escaping()->Content)->some View{
        
        
        NavigationLink {
            
            content()
            
        } label: {
            
            HStack{
                
              Text(title)
                    .font(.callout.bold())
                
                  Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50,height:50)
                    .clipShape(Circle())
                
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.vertical,10)
            .padding(.horizontal)
            .background{
             
                Color.white
                    .cornerRadius(10)
                
            }
            .padding(.horizontal)
          
            .shadow(radius: 13)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

