















<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="last-modified" content="2019-12-24 14:31:26 +0100">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- meta "search-domain" used for google site search function google_search() -->
    <meta name="search-domain" value="">
    <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap-theme.css" />
    <link rel="stylesheet" type="text/css" href="./assets/css/lesson.css" />
    <link rel="stylesheet" type="text/css" href="./assets/css/syntax.css" />

    



    <!-- Favicons for everyone -->
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="./assets/favicons/dc/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="./assets/favicons/dc/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="./assets/favicons/dc/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="./assets/favicons/dc/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="60x60" href="./assets/favicons/dc/apple-touch-icon-60x60.png" />
    <link rel="apple-touch-icon-precomposed" sizes="120x120" href="./assets/favicons/dc/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon-precomposed" sizes="76x76" href="./assets/favicons/dc/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon-precomposed" sizes="152x152" href="./assets/favicons/dc/apple-touch-icon-152x152.png" />
    <link rel="icon" type="image/png" href="./assets/favicons/dc/favicon-196x196.png" sizes="196x196" />
    <link rel="icon" type="image/png" href="./assets/favicons/dc/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/png" href="./assets/favicons/dc/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="./assets/favicons/dc/favicon-16x16.png" sizes="16x16" />
    <link rel="icon" type="image/png" href="./assets/favicons/dc/favicon-128.png" sizes="128x128" />
    <meta name="application-name" content="Data Carpentry - Workshop Title"/>
    <meta name="msapplication-TileColor" content="#FFFFFF" />
    <meta name="msapplication-TileImage" content="./assets/favicons/dc/mstile-144x144.png" />
    <meta name="msapplication-square70x70logo" content="./assets/favicons/dc/mstile-70x70.png" />
    <meta name="msapplication-square150x150logo" content="./assets/favicons/dc/mstile-150x150.png" />
    <meta name="msapplication-wide310x150logo" content="./assets/favicons/dc/mstile-310x150.png" />
    <meta name="msapplication-square310x310logo" content="./assets/favicons/dc/mstile-310x310.png" />


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
    <title>Workshop Title: DplyR</title>
  </head>
  <body>

    



    <div class="container">
      






<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      
      
      <a href="https://www.scienceparkstudygroup.info" class="pull-left">
        <img class="navbar-logo" src="./assets/img/dc-icon-black.svg" alt="Data Carpentry logo" />
      </a>
      

      
      <a class="navbar-brand" href="./">Home</a>

    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">

	
        <li><a href="./CODE_OF_CONDUCT.html">Code of Conduct</a></li>

        

	
	

	
        <li><a href="./LICENSE.html">License</a></li>
	
	<li><a href="/edit//FirstScript.R">Improve this page <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></li>
	
      </ul>
      <form class="navbar-form navbar-right" role="search" id="search" onsubmit="google_search(); return false;">
        <div class="form-group">
          <input type="text" id="google-search" placeholder="Search..." aria-label="Google site search">
        </div>
      </form>
    </div>
  </div>
</nav>















<h1 class="maintitle"><a href="./">Workshop Title</a>: DplyR</h1>

<article>
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

```{r}
library(dplyr)
```


read the example data file using readr::read_csv
```{r}
gapminder <- readr::read_csv("https://raw.githubusercontent.com/ScienceParkStudyGroup/r-lesson-based-on-ohi-data-training/gh-pages/data/gapminder.csv")
```

```{r}
gapminder
```

checking first few or last few with head() or tail()
```{r}
head(gapminder,n = 10)
tail(gapminder,n=11)
```

struture of a dataset
```{r}
str(gapminder)
```

More descriptions
```{r}
names(gapminder)
dim(gapminder)
ncol(gapminder)
nrow(gapminder)
```

dimentions
```{r}
c(nrow(gapminder),ncol(gapminder))
```

summery of the dataset
```{r}
summary(gapminder)
```


induvidual columns or variables
```{r}
tail(gapminder$pop, n = 10)
```

example using filter()
all rows with lifeExp of less then 29
```{r}
filter(gapminder, lifeExp < 29)
```

filter on a country
```{r}
filter(gapminder, country == "Mexico")
```

```{r}
filter(gapminder, country %in% c("Mexico","Peru"))
```

```{r}
X <- filter(gapminder, country == "Mexico", year == 2002)
X
```

```{r}
Sweden <- filter(gapminder, country == "Sweden")
mean(Sweden$lifeExp)
```

select funtion
```{r}
select(gapminder, -continent)
```

```{r}
Sweden <- filter(gapminder, country == "Sweden")
mean(Sweden$lifeExp)


MeanSweden <- filter(gapminder, country == "Sweden") %>% tail(n=2)
MeanSweden
```

```{r}
gapminderPlus <-mutate(gapminder, MegaGdp = 100000+(gdpPercap*pop))
gapminderPlus
```
highest gdp per country
```{r}
gapminder %>% 
  group_by(country) %>% 
  mutate(gdp = pop * gdpPercap, maxGdp = max(gdp)) %>% 
  ungroup()
```

summarize
```{r}
Max_gdp <- gapminder %>% 
  group_by(country) %>% 
  mutate(gdp = pop * gdpPercap) %>% 
  summarize(max_gdp = max(gdp)) %>% 
  ungroup() %>% 
  arrange(max_gdp)
Max_gdp
```

```{r}
library(tidyr)
```

```{r}
AirPassengers
```



```{r}
gap_wide <- readr::read_csv("https://github.com/ScienceParkStudyGroup/r-lesson-based-on-ohi-data-training/blob/gh-pages/data/gapminder_wide.csv")
```

```{r}
gap_wide <- readr::read_csv('https://raw.githubusercontent.com/ScienceParkStudyGroup/r-lesson-based-on-ohi-data-training/gh-pages/data/gapminder_wide.csv')

```

```{r}
head(gap_wide)
```

make gap_long from the gap_wide
```{r}
gap_long <- gap_wide %>% 
  gather(key = obstype_year, value = obs_value)
```

```{r}
dim(gap_wide)
dim(gap_long)
```

```{r}
gap_long
```

```{r}
gap_long <- gap_wide %>% 
  gather(key = obstype_year,
         value = obs_values,
         dplyr::starts_with("pop"),
         dplyr::starts_with("lifeExp"),
         dplyr::starts_with("gdpPercap")
         )
```

```{r}
gap_long
```


```{r}
gap_long <- gap_wide %>% 
  gather(key = obstype_year,
         value = obs_values,
         -continent, -country)
```


```{r}
gap_long
```

```{r}
gap_long <- gap_wide %>% 
  gather(key = obstype_year,
         value = obs_values,
         -continent, -country) %>% 
  separate(obstype_year,
           into = c("obs_type", "year" ),
           sep = "_",
           convert = TRUE)
```



```{r}
gap_long
```



```{r}
canada_df <- gap_long %>% 
  filter(obs_type == "lifeExp",
            country == "Canada")
```



plot canada lifeExp
```{r}
ggplot(canada_df, aes(x=year, y = obs_values)) +
  geom_line()
```

```{r}
continents <- gap_long %>% 
  filter(obs_type == "lifeExp",
         year > 1980) %>% 
  group_by(continent, year) %>% 
  summarize(mean_le = mean(obs_values)) %>% 
  ungroup()

```

```{r}
ggplot(data = continents, aes(x =year, y = mean_le, color = continent)) +
  geom_line() +
  labs(title = "Mean life expectancy", x="year", y = "Age (years)")
  
```


from long back to wide.
```{r}
gap_normal <- gap_long %>% 
  spread(obs_type, obs_values)
```

```{r}
dim(gap_normal)
dim(gapminder)

head(gap_normal)
head(gapminder)
```
```{r}
head(gap_normal)
```

```{r}
gap_wide_new <- gap_long %>% 
  unite(col = var_names, obs_type, year, sep="_") %>% 
  spread(key = var_names,
          value = obs_values)
gap_wide_new
```


```{r}
all.equal(gap_wide, gap_wide_new)
```
















</article>

      
      
<footer>
  <div class="row">
    <div class="col-md-6" align="left">
      <h4>
	Copyright &copy; 2019–2019
	
	<a href="https://www.scienceparkstudygroup.info">Amsterdam Science Park Study Group</a>
	
      </h4>
    </div>

  </div>
</footer>

      
    </div>
    
<script src="./assets/js/jquery.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<script src="./assets/js/lesson.js"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-37305346-2', 'auto');
  ga('send', 'pageview');
</script>

  </body>
</html>
