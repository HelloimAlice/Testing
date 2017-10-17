---
  title: 'Chapter 3: Data Visualization'
output: html_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)
```

##3.2.1 The mpg Data Frame
Look at dataframe of mpg dataset
```{r}
mpg
```


##3.2.2 Creating a ggplot
Ploy `mgp`, putting `displ` on the x-axis and `hwy` on the y-axis.
+ Bonus: Add some pretty colors to distinguish between manufacturers

```{r}
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, col=manufacturer))
```

<<<<<<< HEAD
##Q & A
1. Run `ggplot(data=mpg)`. What do you see?

A blank plot.
```{r}
ggplot(data = mpg)
```

2. How many rows are in mpg? How many columns?
```{r}
nrow(mpg)
ncol(mpg)
dim(mpg)
```

3. What does the `drv` variable describe? Read the help for `?mpg` to find out

From the help file: drv
f = front-wheel drive, r = rear wheel drive, 4 = 4wd

4. Make a scatterplot of `hwy` vs `cyl`
```{r echo=FALSE}
ggplot(data=mpg) +
  geom_point(mapping=aes(x=hwy,y=cyl))
```

5. What happens if you make a scatterplot of `class` VS `drv`? Why is the plot not useful?
You are no longer able to see the individual points because they are on top of each other. Additionally, the class is not a numerical variables (rather it is categorical), so viewing it as a scatterplot does not give us any information regarding trends.

```{r echo = FALSE}
ggplot(data=mpg) +
  geom_point(mapping=aes(x=class,y=drv))
```

Aesthetic Mapping

```{r}

#Using different arguments of aes()
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, col=class))
geom_point(mapping = aes(x = displ, y = hwy, col=class, size=class, alpha=class, shape=class))
```

Which variables in mpg are categorical? Which variables are continuous? (Hint: type ?mpg to read the documentation for the dataset). How can you see this information when you run mpg?

```{r}
sapply(mpg[,1:11],class)
```


Map a continuous variable to color, size, and shape. How do these aesthetics behave differently for categorical vs. continuous variables?

What happens if you map the same variable to multiple aesthetics?

What does the stroke aesthetic do? What shapes does it work with? (Hint: use ?geom_point)

What happens if you map an aesthetic to something other than a variable name, like aes(colour = displ < 5)?