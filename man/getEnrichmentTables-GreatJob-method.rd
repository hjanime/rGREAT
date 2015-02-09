\name{getEnrichmentTables-GreatJob-method}
\alias{getEnrichmentTables}
\alias{getEnrichmentTables,GreatJob-method}
\title{
Get enrichment tables from GREAT web server  


}
\description{
Get enrichment tables from GREAT web server  


}
\usage{
\S4method{getEnrichmentTables}{GreatJob}(job, ontology = NULL, category = c("GO", "Pathway_Data"),
    request_interval = 30, max_tries = 100)
}
\arguments{

  \item{job}{\code{GreatJob} instance}
  \item{ontology}{ontology names. Valid values are in \code{\link{availableOntologies}}(). \code{ontology} is prior to  \code{category} argument.}
  \item{category}{Pre-defined categories. A category can contain more than one ontologies. Valid values are in  \code{\link{availableCategories}}()}
  \item{request_interval}{time interval for two requests. Default is 300 seconds.}
  \item{max_tries}{maximum tries}

}
\details{
Please note there is no FDR column in original tables. Users should  calculate by themselves by functions such as \code{\link[stats]{p.adjust}}  


}
\value{
The returned value is a list of data frames in which each one corresponds to  result for a single ontology. The structure of the data frames are same as  the tables available on GREAT website.  


}
\author{
Zuguang gu <z.gu@dkfz.de>  


}
\examples{
job = readRDS(paste0(system.file("extdata", package = "rGREAT"), "/job.rds"))
tb = getEnrichmentTables(job)
names(tb)
head(tb[[1]])
job

tb = getEnrichmentTables(job, ontology = c("GO_Molecular_Function", "BioCyc_Pathway"))
tb = getEnrichmentTables(job, category = c("GO"))
}
