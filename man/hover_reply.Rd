% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hover.R
\name{hover_reply}
\alias{hover_reply}
\title{The response to a textDocument/hover Request}
\usage{
hover_reply(id, uri, workspace, document, point)
}
\description{
When hovering on a symbol, if it is a function, return its help text
if it exists in the current \link{Workspace}.
}
\keyword{internal}
