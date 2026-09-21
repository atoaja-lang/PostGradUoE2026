library(shiny)

ui <- fluidPage(
  
  titlePanel("Aplikasi R Pertama Saya"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      numericInput(
        inputId = "angka1",
        label = "Masukkan angka pertama:",
        value = 10
      ),
      
      numericInput(
        inputId = "angka2",
        label = "Masukkan angka kedua:",
        value = 20
      )
      
    ),
    
    mainPanel(
      
      h3("Hasil Penjumlahan"),
      
      textOutput("hasil")
      
    )
  )
)

server <- function(input, output) {
  
  output$hasil <- renderText({
    
    input$angka1 + input$angka2
    
  })
  
}

shinyApp(
  ui = ui,
  server = server
)