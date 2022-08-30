################################################################################
## Copyright (C) 2010 Peter Murakami <peter.murakami@gmail.com>
## 
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

fill <- function(x,direction="before"){
    if(direction=="after"){
        notnas <- which(!is.na(x))
        if(1%in%notnas){ notnas <- notnas[-which(notnas==1)] }
        nas    <- which( is.na(x))
        k=1
        for(i in 1:notnas[length(notnas)]){
            if(i%in%nas){
                x[i] <- x[notnas[k]]
            }
            if(i%in%notnas & i!=1){
                k=k+1
            }
        }
        return(x)
    } else if(direction=="before"){
        notnas <- which(!is.na(x))
        nas    <- which( is.na(x))
        k <- 1
        for(i in (notnas[1]+1):length(x)){
            if(i%in%nas){
                x[i] <- x[notnas[k]]
            }
            if(i%in%notnas){
                k=k+1
            }
        }
        return(x)
    }       
}
