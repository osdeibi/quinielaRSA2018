Octavos de Final
=======================================================================
  ```{r}
ea<-reactive({#input$buttonA, {
  etopn(lista2A()$data_resumenEquipos)
})
eb<-reactive({#input$buttonB, {
  etopn(lista2B()$data_resumenEquipos)
})
ec<-reactive({#input$buttonC, {
  etopn(lista2C()$data_resumenEquipos)
})
ed<-reactive({#input$buttonD, {
  etopn(lista2D()$data_resumenEquipos)
})
ee<-reactive({#input$buttonE, {
  etopn(lista2E()$data_resumenEquipos)
})
ef<-reactive({#input$buttonF, {
  etopn(lista2F()$data_resumenEquipos)
})
eg<-reactive({#input$buttonG, {
  etopn(lista2G()$data_resumenEquipos)
})
eh<-reactive({#input$buttonH, {
  etopn(lista2H()$data_resumenEquipos)
})

v8s <- reactiveValues(OK = c(F,F,F,F,
                             F,F,F,F))
observeEvent(input$buttonA, {
  v8s$OK[1] <- lista2A()$marcaBoton
})

observeEvent(input$buttonB, {
  v8s$OK[2] <- lista2B()$marcaBoton
})

observeEvent(input$buttonC, {
  v8s$OK[3] <- lista2C()$marcaBoton
})

observeEvent(input$buttonD, {
  v8s$OK[4] <- lista2D()$marcaBoton
})

observeEvent(input$buttonE, {
  v8s$OK[5] <- lista2E()$marcaBoton
})

observeEvent(input$buttonF, {
  v8s$OK[6] <- lista2F()$marcaBoton
})

observeEvent(input$buttonG, {
  v8s$OK[7] <- lista2G()$marcaBoton
})

observeEvent(input$buttonH, {
  v8s$OK[8] <- lista2H()$marcaBoton
})

alarma8vos<-paste0("¡O.O Nos caemos a pedazos!")
```

Row
-------------------------------------
  
  ### [W49]
  
  ```{r}

Grupo1<-"A"
Grupo2<-"B"

fluidRow(
  
  column(4,
         h2(paste0("1",Grupo1))
  ),
  
  column(4,
         numericInput(paste0("E1",Grupo1),
                      renderUI(
                        if(!is.null(lista2A()$data_resumenEquipos)){
                          paste0(ea()[1])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2A()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
fluidRow(
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----   "), sep = ""))
         )),
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----"),tags$h3(style="color:red", "vs"), sep = ""))
         ))
  
)

fluidRow(
  column(4,
         h2(paste0("2",Grupo2))
  ),
  
  column(4,
         numericInput(paste0("E2",Grupo2),
                      renderUI(
                        if(!is.null(lista2B()$data_resumenEquipos)){
                          paste0(eb()[2])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2B()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
```

### [W50]

```{r}
Grupo1<-"C"
Grupo2<-"D"
p<-"W50"

fluidRow(
  
  column(4,
         h2(paste0("1",Grupo1))
  ),
  
  column(4,
         numericInput(paste0("E1",Grupo1),
                      renderUI(
                        if(!is.null(lista2C()$data_resumenEquipos)){
                          paste0(ec()[1])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2C()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
fluidRow(
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----   "), sep = ""))
         )),
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----"),tags$h3(style="color:red", "vs"), sep = ""))
         ))
  
)

fluidRow(
  column(4,
         h2(paste0("2",Grupo2))
  ),
  
  column(4,
         numericInput(paste0("E2",Grupo2),
                      renderUI(
                        if(!is.null(lista2D()$data_resumenEquipos)){
                          paste0(ed()[2])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2D()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
``` 

### [W53]

```{r}
Grupo1<-"E"
Grupo2<-"F"

fluidRow(
  
  column(4,
         h2(paste0("1",Grupo1))
  ),
  
  column(4,
         numericInput(paste0("E1",Grupo1),
                      renderUI(
                        if(!is.null(lista2E()$data_resumenEquipos)){
                          paste0(ee()[1])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2E()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
fluidRow(
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----   "), sep = ""))
         )),
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----"),tags$h3(style="color:red", "vs"), sep = ""))
         ))
  
)

fluidRow(
  column(4,
         h2(paste0("2",Grupo2))
  ),
  
  column(4,
         numericInput(paste0("E2",Grupo2),
                      renderUI(
                        if(!is.null(lista2F()$data_resumenEquipos)){
                          paste0(ef()[2])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2F()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
```

### [W54]

```{r}
Grupo1<-"G"
Grupo2<-"H"

fluidRow(
  
  column(4,
         h2(paste0("1",Grupo1))
  ),
  
  column(4,
         numericInput(paste0("E1",Grupo1),
                      renderUI(
                        if(!is.null(lista2G()$data_resumenEquipos)){
                          paste0(eg()[1])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2G()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
fluidRow(
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----   "), sep = ""))
         )),
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----"),tags$h3(style="color:red", "vs"), sep = ""))
         ))
  
)

fluidRow(
  column(4,
         h2(paste0("2",Grupo2))
  ),
  
  column(4,
         numericInput(paste0("E2",Grupo2),
                      renderUI(
                        if(!is.null(lista2H()$data_resumenEquipos)){
                          paste0(eh()[2])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2H()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
``` 


Row
-------------------------------------
  
  ### [W51]
  
  ```{r}
Grupo1<-"B"
Grupo2<-"A"

fluidRow(
  
  column(4,
         h2(paste0("1",Grupo1))
  ),
  
  column(4,
         numericInput(paste0("E1",Grupo1),
                      renderUI(
                        if(!is.null(lista2B()$data_resumenEquipos)){
                          paste0(eb()[1])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2B()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
fluidRow(
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----   "), sep = ""))
         )),
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----"),tags$h3(style="color:red", "vs"), sep = ""))
         ))
  
)

fluidRow(
  column(4,
         h2(paste0("2",Grupo2))
  ),
  
  column(4,
         numericInput(paste0("E2",Grupo2),
                      renderUI(
                        if(!is.null(lista2A()$data_resumenEquipos)){
                          paste0(ea()[2])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2A()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
```

### [W52]

```{r}
Grupo1<-"D"
Grupo2<-"C"

fluidRow(
  
  column(4,
         h2(paste0("1",Grupo1))
  ),
  
  column(4,
         numericInput(paste0("E1",Grupo1),
                      renderUI(
                        if(!is.null(lista2D()$data_resumenEquipos)){
                          paste0(ed()[1])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2D()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
fluidRow(
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----   "), sep = ""))
         )),
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----"),tags$h3(style="color:red", "vs"), sep = ""))
         ))
  
)

fluidRow(
  column(4,
         h2(paste0("2",Grupo2))
  ),
  
  column(4,
         numericInput(paste0("E2",Grupo2),
                      renderUI(
                        if(!is.null(lista2C()$data_resumenEquipos)){
                          paste0(ec()[2])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2C()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
``` 

### [W55]

```{r}
Grupo1<-"F"
Grupo2<-"E"

fluidRow(
  
  column(4,
         h2(paste0("1",Grupo1))
  ),
  
  column(4,
         numericInput(paste0("E1",Grupo1),
                      renderUI(
                        if(!is.null(lista2F()$data_resumenEquipos)){
                          paste0(ef()[1])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2F()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
fluidRow(
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----   "), sep = ""))
         )),
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----"),tags$h3(style="color:red", "vs"), sep = ""))
         ))
  
)

fluidRow(
  column(4,
         h2(paste0("2",Grupo2))
  ),
  
  column(4,
         numericInput(paste0("E2",Grupo2),
                      renderUI(
                        if(!is.null(lista2E()$data_resumenEquipos)){
                          paste0(ee()[2])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2E()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
```

### [W56]

```{r}
Grupo1<-"H"
Grupo2<-"G"

fluidRow(
  
  column(4,
         h2(paste0("1",Grupo1))
  ),
  
  column(4,
         numericInput(paste0("E1",Grupo1),
                      renderUI(
                        if(!is.null(lista2H()$data_resumenEquipos)){
                          paste0(eh()[1])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos##,unique(lista2H()$data_EquipoPartido$Grupo),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
fluidRow(
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----   "), sep = ""))
         )),
  
  column(4,
         tags$div(
           HTML(paste(tags$span(style="color:white", "----"),tags$h3(style="color:red", "vs"), sep = ""))
         ))
  
)

fluidRow(
  column(4,
         h2(paste0("2",Grupo2))
  ),
  
  column(4,
         numericInput(paste0("E2",Grupo2),
                      renderUI(
                        if(!is.null(lista2G()$data_resumenEquipos)){
                          paste0(eg()[2])}
                        else{
                          tags$span(style="color:red",
                                    alarma8vos###,unique(as.character(lista2G()$data_EquipoPartido$Grupo)),"!")
                          )
                        }
                      ),
                      min=0, max=100, value=0,step=1,
                      width = '100px')
  )
)
``` 

Row {data-height=100}
-------------------------------------
  
  
  ```{r}
library(shinyjs)

dataW<-reactive({data.frame("Codigo"=c("W_49_E1","W_49_E2", #paste(Etapa,p,"E1",sep="_"),paste(Etapa,p,"E2",sep="_")
                                       "W_50_E1","W_50_E2",
                                       "W_53_E1","W_53_E2",
                                       "W_54_E1","W_54_E2",
                                       "W_51_E1","W_51_E2",
                                       "W_52_E1","W_52_E2",
                                       "W_55_E1","W_55_E2",
                                       "W_56_E1","W_56_E2"),
                            "Equipo"=c(paste0(ea()[1]),paste0(eb()[2]),
                                       paste0(ec()[1]),paste0(ed()[2]),
                                       paste0(ee()[1]),paste0(ef()[2]),
                                       paste0(eg()[1]),paste0(eh()[2]),
                                       paste0(eb()[1]),paste0(ea()[2]),
                                       paste0(ed()[1]),paste0(ec()[2]),
                                       paste0(ef()[1]),paste0(ee()[2]),
                                       paste0(eh()[1]),paste0(eg()[2]))
)
  # eventReactive({ input$buttonA input$buttonB input$buttonC input$buttonD input$buttonE input$buttonF input$buttonG input$buttonH}
})


lista8vos<-eventReactive(input$button8vos,{
  
  if(v8s$OK[1] & v8s$OK[2] & v8s$OK[3] & v8s$OK[4] & v8s$OK[5] & v8s$OK[6] & v8s$OK[7] & v8s$OK[8]){
    # print("holi")
    calcula_Goles(vectorgoles=c(input[["E1A"]],input[["E2B"]],#input[[paste0("E1",Grupo1)]],
                                input[["E1C"]],input[["E2D"]],
                                input[["E1E"]],input[["E2F"]],
                                input[["E1G"]],input[["E2H"]],
                                input[["E1B"]],input[["E2A"]],
                                input[["E1D"]],input[["E2C"]],
                                input[["E1F"]],input[["E2E"]],
                                input[["E1H"]],input[["E2G"]]),
                  data=dataW()
    )
  }else{
    "MENSAJE SIN CONCLUIR PRIMERA FASE"
  }
})
fluidRow(
  
  column(7,
         actionButton("button8vos","  NO TE VAYAS SIN ACTUALIZARME    :P")
  ),
  
  column(7,
         renderTable({
           if(lista8vos()=="MENSAJE SIN CONCLUIR PRIMERA FASE"){
             m<-matrix("PRIMERA FASE SIN CONCLUIR CORRECTAMENTE")
             colnames(m)<-"¡¡¡O.O!!!!"
             m
           }else if(!is.null(lista8vos()$data_EquipoPartido)){
             if(lista2A()$marcaBoton & lista2B()$marcaBoton){
               if(lista8vos()$marcaBoton){
                 if(sum(lista8vos()$data_EquipoPartido$Empate)==0){
                   as.matrix(lista8vos()$data_EquipoPartido[1:8,c("Grupo","Partido","Equipo")])
                 }else{
                   m<-matrix("</3 Cámbialo porfiiiiis")
                   colnames(m)<-"¡¡¡NO MAMAR QUE PUSISTE EMPATES!!!!"
                   m
                 }
                 
               }else{
                 m<-matrix("Por favor revisa que las cantidades de Segunda Fase sean correctas :O")
                 colnames(m)<-"¡¡¡AGUAS!!!!"
                 m
               }
             }else{
               m<-matrix("Por favor revisa que las cantidades de Primera Fase sean correctas :O")
               colnames(m)<-"¡¡¡AGUAS!!!!"
               m
             }
             
           }else{
             m<-matrix("Por favor revisa que las cantidades ingresadas sean correctas")
             colnames(m)<-"¡¡¡AGUAS!!!!"
             m
           }
           
         })
         
  )
)
```



