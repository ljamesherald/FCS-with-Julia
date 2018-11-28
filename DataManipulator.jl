using FileIO
using FCSFiles
using Gadfly

flowrun = load(raw"C:\Users\ljame\Documents\GitHub\FCS-with-Julia\FCS_data\BD-FACS-Aria-II.fcs")



p = plot(x=flowrun["FSC-A"], y=flowrun["SSC-A"], Geom.histogram2d,
Guide.xlabel("FSC-A"), Guide.ylabel("SSC-A"), Coord.cartesian(xmin=0, ymin=0))

#import Cairo, Fontconfig
#draw(PNG("BD-FACS-Aria-II-Graph.png", 10cm, 7cm, dpi=300), p)
