import SwiftUI

struct FrameworkGridItemView: View {
    var framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}


struct FrameworkGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridItemView(framework: FrameworkDataSource.sampleFramework)
    }
}
