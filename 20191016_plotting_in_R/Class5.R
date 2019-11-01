# Class 5 Data Visualization

x <-rnorm(1000)


# How many things are in x?
length(x)

mean(x)
sd(x)

summary(x)

boxplot(x)
hist(x)
hist(x, breaks=10)
rug(x)



# Part 2

weight <- read.table(file="bimm143_05_rstats/weight_chart.txt",
                     header=TRUE)
plot(weight$Age, weight$Weight, type="o", pch=15, lwd=2, cex=1.5,
      ylim=c(2,10), xlab="Age", ylab="Weight", main="Baby weight with age")


# Making a bar plot
# read.delim would also be good

mouse <- read.table("bimm143_05_rstats/feature_counts.txt",
                    header=TRUE,
                    sep="\t")

par(mar=c(4,15,4,2))
barplot(mouse$Count, horiz=TRUE, names.arg = mouse$Feature,
        main="Cool stuff for sure", las=1, xlim=c(0,100000),
        xlab="Numbers")


# Adding some colors

counts <- read.csv("bimm143_05_rstats/male_female_counts.txt", sep = "\t")
barplot(counts$Count, names.arg = counts$Sample, las = 1,
        col = rainbow(nrow(Counts))

        