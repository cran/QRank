\name{QRank}
\alias{QRank}
\title{
A new Quantile Rank-score (QRank) based test for the eQTL identification. 
}
\description{
A function to obtain the p-value on the association between a gene expression and a genetic variant based on quantile rank-score test.
}
\usage{
QRank(gene, snp, cov = NULL, tau)
}
\arguments{
  \item{gene}{
a gene expression level from a selected gene. No parametric assumption is needed for underlying distribution.
}
  \item{snp}{
a selected SNP. 
}
  \item{cov}{
a vector or matrix of covariates. Default is NULL. 
}
  \item{tau}{
the quantile levels to be estimated. Tau can be a single value or a vector of quantile levels. 
}

}

\details{
This function conducts Quantile Rank-score (QRank) based test for the continuous traits. It can be used to identify expression quantitative trait loci (eQTLs) that are associated with the conditional quantile functions of gene expression.  
}

\value{
\item{composite.pvalue }{a single p-value for across all quantile levels under consideration, testing H0:
No genetic association at the selected quantile levels.}

\item{quantile.specific.pvalue }{p-values of each quantile level, testing \eqn{H_0}{H[0]}: The genetic variant and gene expression are not associated at this quantile level.}

}
\references{
Xiaoyu Song, Gen Li, Zhenwei Zhou, Xianling Wang, Iuliana Ionita-Laza and Ying Wei (2016). QRank: A Novel Quantile Regression Tool for eQTL Discovery. \emph{Under revision for Bioinformatics.} 
}
\author{
Xiaoyu Song
}

\examples{
set.seed(123)                                                                        #
n=300                                                                                #
x=rbinom(n, 2, 0.2)                                                                  #
y=rnorm(n, mean=0, sd=1)                                                             #
z=cbind(rbinom(n, 1, 0.3), rnorm(n, mean=2, sd=2))                                   # 
taus=c( 0.25, 0.5, 0.75)                                                             # 

# - run the proposed QRank approach                                                  #
QRank(gene=y, snp=x, cov=z, tau=taus)                                                #

# - output                                                                           #
#Composite.pvalue:                                                                   #
#[1] 0.2241873                                                                       #

#Quantile.specific.pvalue:                                                           #
#    0.25       0.5      0.75                                                        #
#0.5452044 0.1821452 0.5938421                                                       #
}

