library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux[3:40]), tableOutput("text1")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux[3:40]), tableOutput("text2"))
  ),
  
  
  
  sidebarLayout(
    sidebarPanel( "Resumen Semestral",
                  style = "color:#2183dd;",
                  tableOutput("text3"),
                  tableOutput("text4")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1"),
                  textOutput("tablanamecat2"),
                  textOutput("tablaprobcat2"),
                  textOutput("tablanamecat3"),
                  textOutput("tablaprobcat3")
),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1"),
                  textOutput("tabla1namecat2"),
                  textOutput("tabla1probcat2"),
                  textOutput("tabla1namecat3"),
                  textOutput("tabla1probcat3"))
  ),
    
  titlePanel("Enero"),
  sidebarLayout(
    sidebarPanel( "Resumen Enero",
                  style = "color:#2183dd;",
                  tableOutput("confidenceenero"),
                  tableOutput("liftenero")
    ),
    mainPanel()
  ),
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1enero"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1enero"),
                  textOutput("tablanamecat2enero"),
                  textOutput("tablaprobcat2enero"),
                  textOutput("tablanamecat3enero"),
                  textOutput("tablaprobcat3enero")),
    
    sidebarPanel("Productos más vendidos",
                 textOutput("tabla1namecat1enero"),
                 style = "color:#dd21d5;",
                 textOutput("tabla1probcat1enero"),
                 textOutput("tabla1namecat2enero"),
                 textOutput("tabla1probcat2enero"),
                 textOutput("tabla1namecat3enero"),
                 textOutput("tabla1probcat3enero"))
  ),
  titlePanel("Febrero"),
  sidebarLayout(
    sidebarPanel( "Resumen Febrero",
                  style = "color:#2183dd;",
                  tableOutput("confidencefebrero"),
                  tableOutput("liftfebrero")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1febrero"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1febrero"),
                  textOutput("tablanamecat2febrero"),
                  textOutput("tablaprobcat2febrero"),
                  textOutput("tablanamecat3febrero"),
                  textOutput("tablaprobcat3febrero")),
    
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1febrero"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1febrero"),
                  textOutput("tabla1namecat2febrero"),
                  textOutput("tabla1probcat2febrero"),
                  textOutput("tabla1namecat3febrero"),
                  textOutput("tabla1probcat3febrero"))
  ),
  
  titlePanel("Marzo"),
  sidebarLayout(
    sidebarPanel( "Resumen Marzo",
                  style = "color:#2183dd;",
                  tableOutput("confidencemarzo"),
                  tableOutput("liftmarzo")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1marzo"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1marzo"),
                  textOutput("tablanamecat2marzo"),
                  textOutput("tablaprobcat2marzo"),
                  textOutput("tablanamecat3marzo"),
                  textOutput("tablaprobcat3marzo")),
    
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1marzo"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1marzo"),
                  textOutput("tabla1namecat2marzo"),
                  textOutput("tabla1probcat2marzo"),
                  textOutput("tabla1namecat3marzo"),
                  textOutput("tabla1probcat3marzo"))
  ),
  
  titlePanel("Abril"),
  sidebarLayout(
    sidebarPanel( "Resumen Abril",
                  style = "color:#2183dd;",
                  tableOutput("confidenceabril"),
                  tableOutput("liftabril")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1abril"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1abril"),
                  textOutput("tablanamecat2abril"),
                  textOutput("tablaprobcat2abril"),
                  textOutput("tablanamecat3abril"),
                  textOutput("tablaprobcat3abril")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1abril"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1abril"),
                  textOutput("tabla1namecat2abril"),
                  textOutput("tabla1probcat2abril"),
                  textOutput("tabla1namecat3abril"),
                  textOutput("tabla1probcat3abril"))
  ),
  
  titlePanel("Mayo"),
  sidebarLayout(
    sidebarPanel( "Resumen Mayo",
                  style = "color:#2183dd;",
                  tableOutput("confidencemayo"),
                  tableOutput("liftmayo")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1mayo"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1mayo"),
                  textOutput("tablanamecat2mayo"),
                  textOutput("tablaprobcat2mayo"),
                  textOutput("tablanamecat3mayo"),
                  textOutput("tablaprobcat3mayo")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1mayo"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1mayo"),
                  textOutput("tabla1namecat2mayo"),
                  textOutput("tabla1probcat2mayo"),
                  textOutput("tabla1namecat3mayo"),
                  textOutput("tabla1probcat3mayo"))
  ),
  
  titlePanel("Junio"),
  sidebarLayout(
    sidebarPanel( "Resumen Junio",
                  style = "color:#2183dd;",
                  tableOutput("confidencejunio"),
                  tableOutput("liftjunio")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1junio"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1junio"),
                  textOutput("tablanamecat2junio"),
                  textOutput("tablaprobcat2junio"),
                  textOutput("tablanamecat3junio"),
                  textOutput("tablaprobcat3junio")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1junio"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1junio"),
                  textOutput("tabla1namecat2junio"),
                  textOutput("tabla1probcat2junio"),
                  textOutput("tabla1namecat3junio"),
                  textOutput("tabla1probcat3junio"))
  )
  
  
  
))
