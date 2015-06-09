#  R package GRAD file R/plotheatmap.R
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

# This function displays a heatmap diagram of a given correlation matrix

#' @title Plot a heatmap  from a correlation matrix
#' @param x a correlation  matrix 
#' @param display_numbers logical, default = FALSE
#' @param ... other options for  pheatmap function
#' @return A plot of the heatmap
#' @import  pheatmap
#'@examples
#'  data(iris)
#' cor1<-Corr_MIC(iris[,1:4],method="pearson")
#' plotheatmap(cor1)
#' @usage  plotheatmap(x,display_numbers=FALSE,...)
#' 
#' @author Rafael S. de Souza
#' 
#' @keywords misc
#' @details The program is a simple wrap  of pheatmap() from package pheatmap. 
#' @export 

# Plot Chord diagram 

plotheatmap<-function(x,display_numbers=FALSE,...){
  if(!is.matrix(x)&!is.data.frame(x))
    stop("Need a matrix or data frame!")
  
  
  pheatmap(x, display_numbers=display_numbers,fontsize=20)
  
}
