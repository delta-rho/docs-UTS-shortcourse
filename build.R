## load packages (and install if not on system)
if(!require("staticdocs"))
  devtools::install_github("hadley/staticdocs")
if(!require("packagedocs"))
  devtools::install_github("hafen/packagedocs")
if(!require("rmarkdown"))
  install.packages("rmarkdown")
if(!require("datadr"))
  devtools::install_github("tesseradata/datadr")

# make sure your working directory is set to repo base directory
code_path <- "~/Documents/Code/Tessera/hafen/docs-UTS-shortcourse"
setwd(code_path)

knitr::opts_knit$set(root.dir = normalizePath("."))

# generate index.html
unlink("assets", recursive = TRUE)
render("index.Rmd", output_format = package_docs(lib_dir = "assets", toc = FALSE))
check_output("index.html")
browseURL("index.html")

