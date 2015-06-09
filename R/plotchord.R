#  R package GRAD file R/plotchord.R
#  Copyright (C) 2014  Rafael S. de Souza
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License version 3 as published by
#the Free Software Foundation.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#  A copy of the GNU General Public License is available at
#  http://www.r-project.org/Licenses/
#

# This function displays a chord diagram of a given correlation matrix

#' @title Plot a chord diagram from a correlation matrix
#' @param x a correlation  matrix 
#' @param color a list with color pallets: "RdBu","YlGn","PRGn","OrRd", default = "RdBu"
#' @param ... other options for distogram function
#' @return A plot of the Chord diagram
#' @import  circlize RColorBrewer
#'@examples
#'  data(iris)
#' cor1<-Corr_MIC(iris[,1:4],method="pearson")
#' plotchord(cor1)
#' @usage plotchord(x,color="RdBu",...)
#' 
#' @author Rafael S. de Souza
#' 
#' @keywords misc
#' @details The program is a simple wrap  of chordDiagram() from package circlize. 
#' @export 

# Plot Chord diagram 

plotchord<-function(x,color="RdBu",...){
  if(!is.matrix(x)&!is.data.frame(x))
    stop("Need a matrix or data frame!")
  

 chordDiagram(x,grid.col = "gray70",symmetric = T,transparency = 0.3,
               col = colorRamp2(seq(-1, 1, by = 0.25), rev(brewer.pal(9,color))))
  
}
