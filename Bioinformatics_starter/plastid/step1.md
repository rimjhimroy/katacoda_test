
We are in a virtual UNIX environment and an **an rstudio-server is being prepared for you**.  
Click the [Dashboard](https://[[HOST_SUBDOMAIN]]-8787-[[KATACODA_HOST]].environments.katacoda.com/) tab on the right to see the interface when it is ready. But before that, let's explore where we are.

Open a new terminal using the "+" on the right.
Type in `pwd`{{execute}}

Some plastid files were copied to your environment, let's see what those files are:
Now type in `ls`{{execute}}

Enter the folder plastid_sequence_analysis: `cd plastid_sequence_analysis`{{execute}}, and explore `ls`{{execute}}

As you see, I have copied the plastid fasta sequences along with annotation tables (gff files) for the eight species. Also you have the output GeSeq codon based alignments in the folder. 

<pre class="file" data-target="clipboard">
install.packages(c(
  "tidyverse",
  "viridis",
  "broom"
))
library(tidyverse)
library(viridis)

bigtab <- read_csv("r-more-files/fastqc.csv")
y_order <- sort(unique(bigtab$test), decreasing=T)  # y axis plots from bottom to top, so reverse
bigtab$test <- factor(bigtab$test, levels=y_order)

x_order <- unique(bigtab$file)
bigtab$file <- factor(bigtab$file, levels=x_order)

color_order <- c("FAIL", "WARN", "PASS")
bigtab$grade <- factor(bigtab$grade, levels=color_order)

myplot <- ggplot(bigtab, aes(x=file, y=test, fill=grade)) + 
    geom_tile(color="black", size=0.5) +           # Black border on tiles
    scale_fill_manual(                             # Colors, as color hex codes
        values=c("#ee0000","#ffee00","#00aa00")) +
    labs(x="", y="", fill="") +                    # Remove axis labels
    coord_fixed() +                                # Square tiles
    theme_minimal() +                              # Minimal theme, no grey background
    theme(panel.grid=element_blank(),              # No underlying grid lines
          axis.text.x=element_text(                # Vertical text on x axis
              angle=90,vjust=0.5,hjust=0))              

myplot
</pre>

Click somewhere on the [rstudio](https://[[HOST_SUBDOMAIN]]-8787-[[KATACODA_HOST]].environments.katacoda.com/) interface to ensure the window is active, press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>1</kbd> to maximize the file pane, paste the script into an empty file, and press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Enter</kbd> to execute the script.


If you do not see a plot when the script completes, you can press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>6</kbd> to maximize the plot panel.
