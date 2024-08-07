#' mabcApp UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_mabcApp_ui <- function(id){
  ns <- NS(id)
  tagList(

    HTML( as.character(div(style="color: red; font-size: 30px;", "Module under construction.")) ),
    img(src = "www/bongo.gif", height = 400, width = 200), # add an image

  )
}

#' mabcApp Server Functions
#'
#' @noRd
mod_mabcApp_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_mabcApp_ui("mabcApp_1")

## To be copied in the server
# mod_mabcApp_server("mabcApp_1")
