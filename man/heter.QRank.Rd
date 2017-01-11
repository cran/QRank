\name{heter.QRank}
\alias{heter.QRank}

\title{
Heterogeneity index for "QRank"
}
\description{
Calculate the heterogeneity index of quantile regression coefficients at multiple quantile levels. It measures the variation of the quantile coefficients across quantile levels.
}
\usage{
heter.QRank(object, newtaus=NULL)
}

\arguments{
  \item{object}{
Object returned from "QRank"
}
  \item{newtaus}{
a vector of quantile levels based on which heterogeneity index are calculated. Default is NULL, in which case the quantile levels inherited from "QRank" will be used. Include the formula of index.
}
}

\value{
\item{heterogeneity index}{one hetergeneity index}
}

\seealso{
\code{\link{QRank}}
}
\examples{
# continuted from "QRank"
\donttest{
taus=c( 0.25, 0.5, 0.75)
q = QRank(gene=y, snp=x, cov=z, tau=taus)  
heter.QRank(q) # default uses taus inherited from "QRank"
# - output
#Heterogeneity index:
#[1] 2.474184
heter.QRank(q,newtaus = 1:9/10) # calculate based on new taus values
# - output
#Heterogeneity index:
#[1] 2.69242
}
}

