Click this [Rstudio](https://[[HOST_SUBDOMAIN]]-8787-[[KATACODA_HOST]].environments.katacoda.com/) link to see the interface when it is ready. 

Let's load some functions that will help us to parse the gff files

<pre class="file" data-target="clipboard">
source("repeat_files/.source/parseGFF3.R")
</pre>

Now let's import the `Arabis_alpina_LTRRT_annotation.gff3` file that we prepared.

<pre class="file" data-target="clipboard">
ltrrt <- gffRead("repeat_files/chrom/Arabis_alpina_chr2.fasta.mod.EDTA.raw/Arabis_alpina_LTRRT_annotation.gff3")
View(ltrrt) # to explore the annotation table
# If you want to use the file we provide in the results folder, run:
# ltrrt <- gffRead("repeat_files/chrom/res/Arabis_alpina_LTRRT_annotation.gff3")
ltrrt$perName <- getAttributeField(ltrrt$attributes, "ID")
ltrrt$perID <- as.numeric(getAttributeField(ltrrt$attributes, "ltr_identity"))*100
</pre>


>>Q1: How many LTR-RTs are annotated as Copia and how many as Gypsy in the chromosome2 of Arabis alpina? <<

<br/>

**HINT:**
<pre class="file" data-target="clipboard">
table(ltrrt$feature)
</pre>

>>Q2: Is there any difference between the mean percent identity of Gypsy and Copia elements? <<

<br/>

**HINT:**
<pre class="file" data-target="clipboard">
library("dplyr")
data <- ltrrt %>%
  filter(feature=="LTR/Copia"|feature=="LTR/Gypsy")

mu <- data %>% 
  group_by(feature) %>%
  summarise(grp.mean = mean(perID))
mu
</pre>

>>Q3: Is there any difference in the density distribution of the percent identity of Gypsy and Copia elements? <<

<br/>

<pre class="file" data-target="clipboard">
library(ggplot2)
theme_set(theme_bw())
a <- ggplot(data, aes(x = perID))
a + geom_density(aes(fill = feature), alpha = 0.4) +
  geom_vline(aes(xintercept = grp.mean, color = feature),
             data = mu, linetype = "dashed") +
  scale_color_manual(values = c("#868686FF", "#EFC000FF"))+
  scale_fill_manual(values = c("#868686FF", "#EFC000FF"))
</pre>

>>Q4: What is the time of proliferation of the Gypsy and Copia elements? <<

<br/>

**HINT:** Calculate mode
<pre class="file" data-target="clipboard">
mode<- function(x) {
  mode=NULL
  dens=density(x)
  y = which.max(dens$y)
  mode=dens$x[y]
  return(mode)
}

md <- data %>% 
  group_by(feature) %>%
  summarise(grp.mean = mode(perID))
md
</pre>