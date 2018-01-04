## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----use1----------------------------------------------------------------
library("wrapr")

5 %.>% sin(.)

## ----nofn----------------------------------------------------------------
5 %.>% sin

## ----sinfn---------------------------------------------------------------
function_reference <- list(f = sin)
class(function_reference) <- "wrapr_applicable"
function_reference$wrapr_function <- function(pipe_left_arg, 
                                              pipe_right_arg, 
                                              pipe_environment) {
  pipe_right_arg$f(pipe_left_arg)
}

function_reference

5 %.>% function_reference

function_reference$f <- sqrt
5 %.>% function_reference

