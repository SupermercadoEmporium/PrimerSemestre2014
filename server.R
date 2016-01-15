#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
  
  output$text1 <- renderPrint({ 
    x<-input$select
    paste(x, round(a_matrix[x,x], digits=4))
    
  })
  
  output$text2 <- renderPrint({ 
    y<-input$select2
    paste(y,round(a_matrix[y,y], digits=4))
    
  })  
  
  output$text3<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix[x,y]/a_matrix[x,x], digits=4))
  })
  
  output$text4<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix[x,y], digits=4)/(round(a_matrix[x,x], digits=4)*round(a_matrix[y,y], digits=4)),digits=4))
  })
  
  output$tablanamecat1<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==input$select,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==input$select,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table( Subconjuntos);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tablanamecat2<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==input$select,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==input$select,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==input$select,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==input$select,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste(round(t[3], digits=4) )
  })
  
   
  output$tabla1namecat1<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==x,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==x,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==x,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==x,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==x,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep,
                                 Ene_Jun.Categoriaf3==x,
                                 select=c(Ene_Jun.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  
  
  output$enero<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_ene[y,y], digits=4))
  })
  
  output$enero2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_ene[y,y], digits=4))
  })
  
  output$confidenceenero<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_ene[x,y]/a_matrix_ene[x,x], digits=4))
  })
  
  output$liftenero<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_ene[x,y], digits=4)/(round(a_matrix_ene[x,x], digits=4)*round(a_matrix_ene[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tablanamecat2enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  
  output$tabla1namecat1enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x, 
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  
  
  output$febrero<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_feb[y], digits=4))
  })
  
  output$febrero2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_feb[y], digits=4))
  }) 
  
  output$confidencefebrero<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_feb[x,y]/a_matrix_feb[x,x], digits=4))
  })
  
  output$liftfebrero<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_feb[x,y], digits=4)/(round(a_matrix_feb[x,x], digits=4)*round(a_matrix_feb[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tablanamecat2febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3febrero<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  
  output$tabla1namecat1febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2], digits=4))
  })
  
  output$tabla1namecat3febrero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[3], digits=4))
  })
  
  
  
  output$marzo<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_mar[y], digits=4))
    
  })
  
  output$marzo2<-renderPrint({
    y<-input$select2
    paste(y, round(a_matrix_mar[y], digits=4))
    
  })
  
  output$confidencemarzo<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_mar[x,y]/a_matrix_mar[x,x], digits=4))
  })
  
  output$liftmarzo<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift", round(round(a_matrix_mar[x,y], digits=4)/(round(a_matrix_mar[x,x], digits=4)*round(a_matrix_mar[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tablanamecat2marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2],digits=4))
  })
  
  output$tablanamecat3marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3marzo<-renderText({
    x<-input$select
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  
  output$tabla1namecat1marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tabla1namecat2marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3marzo<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mar,
                                 Marzo.Categoriaf3==x,
                                 select=c(Marzo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  
  
  output$abril<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_abr[y,y], digits=4))
    
  })
  
  output$abril2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_abr[y,y], digits=4))
    
  })
  
  output$confidenceabril<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_abr[x,y]/a_matrix_abr[x,x], digits=4))
  })
  
  output$liftabril<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_abr[x,y], digits=4)/(round(a_matrix_abr[x,x], digits=4)*round(a_matrix_abr[y,y], digits=4)),digits=4))
  })
  
  output$tablanamecat1abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1],digits=4))
  })
  
  output$tablanamecat2abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste(round(t[2],digits=4))
  })
  
  output$tablanamecat3abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  
  output$tabla1namecat1abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))   
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3abril<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Abr,
                                 Abril.Categoriaf3==input$select2,
                                 select=c(Abril.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste( round(t[3], digits=4))
  })
  
  
  
  output$mayo<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Mayo[y,y], digits=4))
    
  })
  
  output$mayo2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Mayo[y,y], digits=4))
    
  })
  
  output$confidencemayo<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Mayo[x,y]/a_matrix_Mayo[x,x], digits=4))
  })
  
  output$liftmayo<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Mayo[x,y], digits=4)/(round(a_matrix_Mayo[x,x], digits=4)*round(a_matrix_Mayo[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1mayo<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tablanamecat2mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2mayo<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[3], digits=4))
  })
  
  
  output$tabla1namecat1mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3mayo<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Mayo,
                                 Mayo.Categoriaf3==input$select2,
                                 select=c(Mayo.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    
    paste(round(t[3], digits=4))
  })
  
  
  
  output$junio<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Junio[y,y], digits=4))
  })
  
  output$junio2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Junio[y,y], digits=4))
  })
  
  output$confidencejunio<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Junio[x,y]/a_matrix_Junio[x,x], digits=4))
  })
  
  output$liftjunio<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Junio[x,y], digits=4)/(round(a_matrix_Junio[x,x], digits=4)*round(a_matrix_Junio[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tablanamecat2junio<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste(round(t[3], digits=4))
  })
  
  
  output$tabla1namecat1junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tabla1namecat2junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2], digits=4))
  })
  
  output$tabla1namecat3junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
 
})


#I Semestre
catg<-data.frame(Ene_Jun$CATEGORIA1, Ene_Jun$Categoriaf3,
                 Ene_Jun$SLSEQ, Ene_Jun$TICKET)

catg_sin_rep<-unique(catg)


#Enero
catg_Ene<-data.frame(Enero$CATEGORIA1, Enero$Categoriaf3,
                     Enero$SLSEQ, Enero$TICKET)

catg_sin_rep_Ene<-unique(catg_Ene)


#Febrero
catg_Feb<-data.frame( Febrero$CATEGORIA1, Febrero$Categoriaf3,
                      Febrero$SLSEQ, Febrero$TICKET)

catg_sin_rep_Feb<-unique(catg_Feb)

#Marzo
catg_Mar<-data.frame(Marzo$CATEGORIA1, Marzo$Categoriaf3,
                     Marzo$SLSEQ, Marzo$TICKET)

catg_sin_rep_Mar<-unique(catg_Mar)

#Abril
catg_Abr<-data.frame(Abril$CATEGORIA1, Abril$Categoriaf3,
                     Abril$SLSEQ, Abril$TICKET)

catg_sin_rep_Abr<-unique(catg_Abr)

#Mayo
catg_Mayo<-data.frame(Mayo$CATEGORIA1, Mayo$Categoriaf3,
                      Mayo$SLSEQ, Mayo$TICKET)

catg_sin_rep_Mayo<-unique(catg_Mayo)


#Junio
catg_Junio<-data.frame(Junio$CATEGORIA1, Junio$Categoriaf3,
                       Junio$SLSEQ, Junio$TICKET)

catg_sin_rep_Junio<-unique(catg_Junio)


