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
class(function_reference) <- c("wrapr_applicable", "ourclass")

#' Wrapr function.
#'
#' S3 dispatch on tyhpe of pipe_right_argument.
#'
#' @param pipe_left_arg left argument.
#' @param pipe_right_arg right argument.
#' @param pipe_environment environment to evaluate in.
#' @param pipe_name character, name of pipe operator.
#' @return result
#'
#' @export
#'
wrapr_function.ourclass <- function(pipe_left_arg, 
                                    pipe_right_arg,
                                    pipe_environment,
                                    pipe_name) {
  pipe_right_arg$f(pipe_left_arg)
}

function_reference

5 %.>% function_reference

function_reference$f <- sqrt
5 %.>% function_reference

## ----debug---------------------------------------------------------------
wrapr_function.ourclass <- function(pipe_left_arg, 
                                    pipe_right_arg,
                                    pipe_environment,
                                    pipe_name) {
  print("pipe_left_arg")
  print(pipe_left_arg)
  print("pipe_right_arg")
  print(pipe_right_arg)
  print("pipe_environment")
  print(pipe_environment)
  print("pipe_name")
  print(pipe_name)
  pipe_right_arg$f(pipe_left_arg)
}

5 %.>% function_reference

