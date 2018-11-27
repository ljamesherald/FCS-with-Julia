using FCSFiles
using FileIO
using Test

flowrun = load("/home/ljherald/github/FCS-with-Julia/Flow Cytometry Data Analyzer/FCSFiles/test/testdata/BD-FACS-Aria-II.fcs")

@test length(flowrun["SSC-A"]) == 100000
