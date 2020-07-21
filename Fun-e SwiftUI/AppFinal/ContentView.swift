import SwiftUI


var barTitle = ("FUN-e")


struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                    ScrollView {
                    
                    ForEach(Theme.allCases, id: \.id) { currentTheme in
                        
                        AtterissageView (theme: currentTheme)
                            .edgesIgnoringSafeArea(.all)
                        
                    }.background(backGroundColor1)
                }.navigationBarTitle( "FUN-e")
                    
                    //.navigationBarItems(leading: Image(systemName: "FUN-eImage"))
                    
            }.padding(0.0)
            }.accentColor(.black)
    }
}
struct AtterissageView: View {
    
    var theme: Theme
   // var qcm: QCM
    var body: some View {
        
        ZStack {
            VStack {
                Spacer()
            
            HStack {
                
                Text(theme.themeName).font(Font.custom("Chewy", size: 25))
                       
                Spacer()
                
                NavigationLink(destination: QCMMathView()){
                    
                    Text("QCM").font(.custom("Chewy.ttf", size: 20)).fontWeight(.bold).foregroundColor(.black)
        
               }
                   
            .frame(width: 47, height:0)
                //.frame(width: 60, height:10)
                .padding().background(backGroundColor2).cornerRadius(10.0)
                
               
                
              NavigationLink(destination: FabriceView()){
                    
                    
                Text("Free QCM").font(.custom("Chewy.ttf", size: 20)).foregroundColor(.black)
                    
                }
              .frame(width: 95, height:0)
        //      .frame(width: 95, height:10)
                .padding().background(backGroundColor2).cornerRadius(10.0)
                
            
                
                //fin HStack
            }//.padding().border(Color.white, width:  1).background(backGroundColor)
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



