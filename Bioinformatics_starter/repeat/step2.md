Click this [Rstudio](https://[[HOST_SUBDOMAIN]]-8787-[[KATACODA_HOST]].environments.katacoda.com/) link to see the interface when it is ready. 


getAttributeField <- function (x, field, attrsep = ";") {
  s = strsplit(x, split = attrsep, fixed = TRUE)
  sapply(s, function(atts) {
    a = strsplit(atts, split = "=", fixed = TRUE)
    m = match(field, sapply(a, "[", 1))
    if (!is.na(m)) {
      rv = a[[m]][2]
    }
    else {
      rv = as.character(NA)
    }
    return(rv)
  })
}

gffRead <- function(gffFile, nrows = -1) {
  cat("Reading ", gffFile, ": ", sep="")
  gff = read.table(gffFile, sep="\t", as.is=TRUE, quote="",
                   header=FALSE, comment.char="#", nrows = nrows,
                   colClasses=c("character", "character", "character", "integer",
                                "integer",
                                "character", "character", "character", "character"))
  colnames(gff) = c("seqname", "source", "feature", "start", "end",
                    "score", "strand", "frame", "attributes")
  cat("found", nrow(gff), "rows with classes:",
      paste(sapply(gff, class), collapse=", "), "\n")
  stopifnot(!is.na(gff$start), !is.na(gff$end))
return(gff)
}


copia <- gffRead("repeat_files/chrom/Arabis_alpina_chr2.fasta.mod.EDTA.raw/copia.gff3")
copia$perName <- getAttributeField(gff$attributes, "ID")
copia$perID <- getAttributeField(gff$attributes, "ltr_identity")

gypsy <- gffRead("repeat_files/chrom/Arabis_alpina_chr2.fasta.mod.EDTA.raw/gypsy.gff3")
gypsy$perName <- getAttributeField(gff$attributes, "ID")
gypsy$perID <- getAttributeField(gff$attributes, "ltr_identity")