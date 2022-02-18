//
//  Blops.swift
//  
//
//  Created by Josue German Hernandez Gonzalez on 11-02-22.
//

import SwiftUI

public struct Blops: View {
    public var body: some View {
        VStack {
            Spacer()
            Blop4()
                .foregroundColor(.blue)
                .frame(width: 300, height: 300, alignment: .center)
            Spacer()
        }.padding()
        onAppear {
            
        }
    }
}


public struct Blop: Shape {
    var offset: CGFloat = 50
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .init(x: 50, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - 20, y: rect.maxY - offset),
        control: CGPoint(x: rect.midX - 250, y: rect.maxY + offset))
        path.addQuadCurve(to: CGPoint(x: rect.midX + 150, y: rect.minY - 50),
                          control: CGPoint(x: rect.midX + 330, y: rect.midY + offset + 30))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY),
                          control: CGPoint(x: 50 , y: 40 ))
        
        path.closeSubpath()
        return path
    }
}


public struct Blop1: Shape {
    var offset: CGFloat = 50
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.53865*width, y: 0.01496*height))
        path.addCurve(to: CGPoint(x: 0.96799*width, y: 0.16256*height), control1: CGPoint(x: 0.69808*width, y: 0.02496*height), control2: CGPoint(x: 0.88359*width, y: 0.03112*height))
        path.addCurve(to: CGPoint(x: 0.89735*width, y: 0.57363*height), control1: CGPoint(x: 1.04766*width, y: 0.28665*height), control2: CGPoint(x: 0.95798*width, y: 0.43981*height))
        path.addCurve(to: CGPoint(x: 0.68462*width, y: 0.788*height), control1: CGPoint(x: 0.85408*width, y: 0.66912*height), control2: CGPoint(x: 0.77242*width, y: 0.72766*height))
        path.addCurve(to: CGPoint(x: 0.29266*width, y: 0.98921*height), control1: CGPoint(x: 0.55774*width, y: 0.8752*height), control2: CGPoint(x: 0.43792*width, y: 1.04316*height))
        path.addCurve(to: CGPoint(x: 0.13445*width, y: 0.58369*height), control1: CGPoint(x: 0.14614*width, y: 0.9348*height), control2: CGPoint(x: 0.17727*width, y: 0.72996*height))
        path.addCurve(to: CGPoint(x: 0.03349*width, y: 0.10398*height), control1: CGPoint(x: 0.08609*width, y: 0.41851*height), control2: CGPoint(x: -0.06701*width, y: 0.24539*height))
        path.addCurve(to: CGPoint(x: 0.53865*width, y: 0.01496*height), control1: CGPoint(x: 0.13562*width, y: -0.03971*height), control2: CGPoint(x: 0.35896*width, y: 0.0037*height))
        path.closeSubpath()
        return path
    }
}


public struct Blop2: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.52576*width, y: 0.00014*height))
        path.addCurve(to: CGPoint(x: 0.85222*width, y: 0.11368*height), control1: CGPoint(x: 0.64489*width, y: 0.00203*height), control2: CGPoint(x: 0.7644*width, y: 0.02896*height))
        path.addCurve(to: CGPoint(x: 0.99946*width, y: 0.45714*height), control1: CGPoint(x: 0.94368*width, y: 0.20192*height), control2: CGPoint(x: 0.99464*width, y: 0.32667*height))
        path.addCurve(to: CGPoint(x: 0.87865*width, y: 0.82841*height), control1: CGPoint(x: 1.00449*width, y: 0.59302*height), control2: CGPoint(x: 0.97491*width, y: 0.73766*height))
        path.addCurve(to: CGPoint(x: 0.52576*width, y: 0.90373*height), control1: CGPoint(x: 0.78573*width, y: 0.91602*height), control2: CGPoint(x: 0.64926*width, y: 0.88496*height))
        path.addCurve(to: CGPoint(x: 0.0537*width, y: 0.95378*height), control1: CGPoint(x: 0.36304*width, y: 0.92846*height), control2: CGPoint(x: 0.17348*width, y: 1.07227*height))
        path.addCurve(to: CGPoint(x: 0.07429*width, y: 0.45714*height), control1: CGPoint(x: -0.06559*width, y: 0.83578*height), control2: CGPoint(x: 0.0472*width, y: 0.62703*height))
        path.addCurve(to: CGPoint(x: 0.18932*width, y: 0.10318*height), control1: CGPoint(x: 0.09467*width, y: 0.3293*height), control2: CGPoint(x: 0.10054*width, y: 0.19305*height))
        path.addCurve(to: CGPoint(x: 0.52576*width, y: 0.00014*height), control1: CGPoint(x: 0.27682*width, y: 0.01461*height), control2: CGPoint(x: 0.40435*width, y: -0.00178*height))
        path.closeSubpath()
        return path
    }
}

public struct Blop3: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47853*width, y: 0.00016*height))
        path.addCurve(to: CGPoint(x: 0.84597*width, y: 0.1687*height), control1: CGPoint(x: 0.61739*width, y: 0.00287*height), control2: CGPoint(x: 0.75258*width, y: 0.0514*height))
        path.addCurve(to: CGPoint(x: 0.98361*width, y: 0.63457*height), control1: CGPoint(x: 0.94757*width, y: 0.29632*height), control2: CGPoint(x: 1.03621*width, y: 0.47294*height))
        path.addCurve(to: CGPoint(x: 0.62456*width, y: 0.84903*height), control1: CGPoint(x: 0.93413*width, y: 0.78659*height), control2: CGPoint(x: 0.75474*width, y: 0.78393*height))
        path.addCurve(to: CGPoint(x: 0.27303*width, y: 0.98992*height), control1: CGPoint(x: 0.50489*width, y: 0.90888*height), control2: CGPoint(x: 0.3973*width, y: 1.036*height))
        path.addCurve(to: CGPoint(x: 0.01621*width, y: 0.62343*height), control1: CGPoint(x: 0.13587*width, y: 0.93905*height), control2: CGPoint(x: 0.05027*width, y: 0.78333*height))
        path.addCurve(to: CGPoint(x: 0.09502*width, y: 0.15407*height), control1: CGPoint(x: -0.01847*width, y: 0.46057*height), control2: CGPoint(x: 0.00012*width, y: 0.282*height))
        path.addCurve(to: CGPoint(x: 0.47853*width, y: 0.00016*height), control1: CGPoint(x: 0.18712*width, y: 0.0299*height), control2: CGPoint(x: 0.33598*width, y: -0.00262*height))
        path.closeSubpath()
        return path
    }
}

public struct Blop4: Shape {
    var offset: CGFloat = 50
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.51923*width, y: 0.00115*height))
        path.addCurve(to: CGPoint(x: 0.78698*width, y: 0.22515*height), control1: CGPoint(x: 0.63234*width, y: -0.01399*height), control2: CGPoint(x: 0.70923*width, y: 0.1236*height))
        
        path.addCurve(to: CGPoint(x: 0.99151*width, y: 0.61793*height), control1: CGPoint(x: 0.87826*width, y: 0.34436*height), control2: CGPoint(x: 1.03651*width, y: 0.46419*height))
        
        path.addCurve(to: CGPoint(x: 0.629*width, y: 0.7648*height), control1: CGPoint(x: 0.94638*width, y: 0.77207*height), control2: CGPoint(x: 0.75064*width, y: 0.69627*height))
       
       
        path.addCurve(to: CGPoint(x: 0.31781*width, y: 0.99746*height), control1: CGPoint(x: 0.51282*width, y: 0.83025*height), control2: CGPoint(x: 0.44384*width, y: 1.02426*height))
       
        path.addCurve(to: CGPoint(x: 0, y: 0.63103*height), control1: CGPoint(x: 0.16687*width, y: 0.96536*height), control2: CGPoint(x: 0.00044*width, y: 0.81831*height))
       
        path.addCurve(to: CGPoint(x: 0.31615*width, y: 0.28818*height), control1: CGPoint(x: -0.00042*width, y: 0.44985*height), control2: CGPoint(x: 0.21095*width, y: 0.41581*height))
        
        path.addCurve(to: CGPoint(x: 0.51923*width, y: 0.00115*height), control1: CGPoint(x: 0.39343*width, y: 0.19444*height), control2: CGPoint(x: 0.41101*width, y: 0.01564*height))
        path.closeSubpath()
        return path
    }
}



public struct Blop5: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.54133*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.9978*width, y: 0.59642*height), control1: CGPoint(x: 0.85137*width, y: 0), control2: CGPoint(x: 0.9978*width, y: 0.31174*height))
        path.addCurve(to: CGPoint(x: 0.54133*width, y: 0.99881*height), control1: CGPoint(x: 0.9978*width, y: 0.82332*height), control2: CGPoint(x: 0.78845*width, y: 0.99881*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.59642*height), control1: CGPoint(x: 0.26933*width, y: 0.99881*height), control2: CGPoint(x: 0, y: 0.84616*height))
        path.addCurve(to: CGPoint(x: 0.54133*width, y: 0), control1: CGPoint(x: 0, y: 0.29322*height), control2: CGPoint(x: 0.21112*width, y: 0))
        path.closeSubpath()
        return path
    }
}

public struct Blop6: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.52345*width, y: 0.00228*height))
        path.addCurve(to: CGPoint(x: 0.77494*width, y: 0.12432*height), control1: CGPoint(x: 0.61896*width, y: 0.0125*height), control2: CGPoint(x: 0.70338*width, y: 0.06347*height))
        path.addCurve(to: CGPoint(x: 0.9077*width, y: 0.32904*height), control1: CGPoint(x: 0.83913*width, y: 0.17891*height), control2: CGPoint(x: 0.86981*width, y: 0.25559*height))
        path.addCurve(to: CGPoint(x: 0.99993*width, y: 0.56046*height), control1: CGPoint(x: 0.94671*width, y: 0.40465*height), control2: CGPoint(x: 0.99999*width, y: 0.47629*height))
        path.addCurve(to: CGPoint(x: 0.90735*width, y: 0.81099*height), control1: CGPoint(x: 0.99986*width, y: 0.65077*height), control2: CGPoint(x: 0.97875*width, y: 0.75122*height))
        path.addCurve(to: CGPoint(x: 0.6375*width, y: 0.86386*height), control1: CGPoint(x: 0.83707*width, y: 0.86983*height), control2: CGPoint(x: 0.72549*width, y: 0.83317*height))
        path.addCurve(to: CGPoint(x: 0.36748*width, y: 0.99927*height), control1: CGPoint(x: 0.53996*width, y: 0.89788*height), control2: CGPoint(x: 0.47117*width, y: 1.00576*height))
        path.addCurve(to: CGPoint(x: 0.11498*width, y: 0.83118*height), control1: CGPoint(x: 0.26275*width, y: 0.99272*height), control2: CGPoint(x: 0.1676*width, y: 0.91731*height))
        path.addCurve(to: CGPoint(x: 0.09535*width, y: 0.55386*height), control1: CGPoint(x: 0.06499*width, y: 0.74936*height), control2: CGPoint(x: 0.11363*width, y: 0.64682*height))
        path.addCurve(to: CGPoint(x: 0.00477*width, y: 0.27082*height), control1: CGPoint(x: 0.07589*width, y: 0.45493*height), control2: CGPoint(x: -0.0226*width, y: 0.36804*height))
        path.addCurve(to: CGPoint(x: 0.23263*width, y: 0.06628*height), control1: CGPoint(x: 0.03231*width, y: 0.17301*height), control2: CGPoint(x: 0.13895*width, y: 0.11479*height))
        path.addCurve(to: CGPoint(x: 0.52345*width, y: 0.00228*height), control1: CGPoint(x: 0.32179*width, y: 0.02013*height), control2: CGPoint(x: 0.42252*width, y: -0.00852*height))
        path.closeSubpath()
        return path
    }
}
