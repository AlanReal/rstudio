FROM rocker/tidyverse

RUN mkdir -p /home/rstudio/.rstudio
RUN chmod 0777 /home/rstudio/.rstudio

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    --reinstall build-essential \
    r-cran-stanheaders \
    g++ \
    gcc \    
    cargo \
    libudunits2-dev \
    libjpeg-dev \
    libsodium-dev \
    libmagick++-dev \
    librsvg2-dev \
    libv8-dev \
    default-jdk \
    coinor-libcgl-dev \
    coinor-libsymphony-dev \
    coinor-libsymphony-doc \
    libxt-dev \
    tk-dev \
    libglpk-dev \
    libgeos-dev \
    libproj-dev \
    libfreetype6-dev \
    libopenmpi-dev \
    libgdal-dev \
    && R CMD javareconf

RUN install2.r --error \
    --deps TRUE \
#    BBmisc \ 
#    DALEX \
#    FactoMineR \ 
#    ISLR \ 
#    Icens \ 
#    KernSmooth \ 
#    MASS \ 
#    MLEcens \ 
    Matrix \ 
    MatrixModels \ 
    ModelMetrics \ 
#    ParamHelpers \ 
#    PortfolioOptim \ 
#    RcppEigen \ 
    Rsymphony \ 
#    Rtsne \ 
#    SQUAREM \ 
#    SparseM \ 
#    TeachingDemos \ 
    abind \ 
    ade4 \ 
    amap \ 
#    base \ 
    bayesSurv \ 
    boot \ 
    brazilmaps-master \ 
    car \ 
#    carData \ 
    caret \ 
#    checkmate \ 
#    chron \ 
#    class \ 
#    classInt \ 
#    cluster \ 
    coda \ 
    codetools \ 
    compiler \ 
#    config \ 
#    cowplot \ 
#    datasets \ 
#    dendextend \ 
#    e1071 \ 
#    ellipse \ 
    factoextra \ 
    fastDummies \ 
    fastGHQuad \ 
    fastmatch \ 
    ff \ 
    flashClust \ 
    flextable \ 
#    fontBitstreamVera \ 
#    fontLiberation \ 
#    fontquiver \ 
    foreach \ 
    foreign \ 
    forge \ 
#    gdata \ 
#    gdtools \ 
#    ggforce \ 
#    ggiraph \ 
#    ggiraphExtra \ 
#    ggpubr \ 
#    ggrepel \ 
#    ggsci \ 
#    ggsignif \ 
#    ggthemes \ 
 #   gower \ 
    gplots \ 
 #   grDevices \ 
    graphics \ 
    grid \ 
    gridExtra \ 
    gsubfn \ 
    gtools \ 
    icensBKL \ 
    insight \ 
    installr \ 
    ipred \ 
    iterators \ 
#    lattice \
#    latticeExtra \ 
    lava \ 
    leaps \ 
    lme4 \ 
#    logspline \ 
    maptools \ 
    methods \ 
#    mgcv \ 
#    minqa \ 
#    mixAK \ 
    mlr \ 
    mnormt \ 
#    moonBook \ 
#    mvtnorm \ 
#    mycor \ 
#    nlme \ 
#    nloptr \ 
#    nnet \ 
#    nortest \ 
    numDeriv \ 
#    officer \ 
#    openxlsx \ 
    parallel \ 
    parallelMap \ 
#    pbkrtest \ 
#    perm \ 
#    polyclip \ 
#    polynom \ 
#    ppcor \ 
#    prodlim \ 
#    proto \ 
#    psych \ 
    qtl \ 
#    quantreg \ 
    r2d3 \ 
#    recipes \ 
    reshape \ 
    reticulate \ 
#    rio \ 
#    rpart \ 
    scatterplot3d \ 
#    sf-master \ 
#    shinyjs \ 
#    showtext \ 
#    showtextdb \ 
#    sjlabelled \ 
#    sjmisc \ 
#    smoothSurv \ 
#    sp \ 
    sparklyr \ 
    spatial \ 
#    splines \ 
#    splitstackshape \ 
#    sqldf \ 
#    stats \ 
#    stats4 \ 
    survival \ 
#    sysfonts \ 
#    systemfonts \ 
#    tcltk \ 
    tensorflow \ 
#    tfruns \ 
#    timeDate \ 
#    tools \ 
#    translations \ 
    tree \ 
#    tweenr \ 
#    units \ 
#    utils \ 
#    viridis \ 
#    webshot \ 
#    xfun \ 
#    zeallot \ 
    zip 

RUN install2.r --error \
    --deps TRUE \


#Ja instalados
#    BH \ 
#    BiocManager \
#    DBI \ 
#    DT \ 
#    R6 \ 
#    RColorBrewer \ 
#    RSQLite \ 
#    Rcpp \ 
#    XML \ 
#    askpass \ 
#    assertthat \ 
#    backports \ 
#    base64enc \ 
#    bit \ 
#    bit64 \ 
#    bitops \ 
#    blob \ 
#    brew \ 
#    broom \ 
#    caTools \ 
#    callr \ 
#    cellranger \ 
#    cli \ 
#    clipr \ 
#    clisymbols \ 
#    colorspace \ 
#    commonmark \ 
#    covr \ 
#    crayon \ 
#    crosstalk \ 
#    curl \ 
#    data.table \ 
#    dbplyr \ 
#    desc \ 
#    devtools \ 
#    digest \ 
#    dplyr \ 
#    ellipsis \ 
#    evaluate \ 
#    fansi \ 
#    farver \ 
#    fastmap \ 
#    forcats \ 
#    fs \ 
#    generics \ 
#    ggplot2 \ 
#    gh \ 
#    git2r \ 
#    glue \ 
#    gtable \ 
#    haven \ 
#    highr \ 
#    hms \ 
#    htmltools \ 
#    htmlwidgets \ 
#    httpuv \ 
#    httr \ 
#    ini \ 
#    interval \ 
#    jsonlite \ 
#    knitr \ 
#    labeling \ 
#    later \ 
#    lazyeval \ 
#    lifecycle \ 
#    lubridate \ 
#    magrittr \ 
#    markdown \ 
#    memoise \ 
#    mime \ 
#    modelr \ 
#    munsell \ 
#    openssl \ 
#    pillar \ 
#    pkgbuild \ 
#    pkgconfig \ 
#    pkgload \ 
#    plogr \ 
#    plyr \ 
#    praise \ 
#    prettyunits \ 
#    processx \ 
#    progress \ 
#    promises \ 
#    ps \ 
#    purrr \ 
#    rappdirs \ 
#    rcmdcheck \ 
#    readr \ 
#    readxl \ 
#    rematch \ 
#    remotes \ 
#    reprex \ 
#    reshape2 \ 
#    rex \ 
#    rlang \ 
#    rmarkdown \ 
#    roxygen2 \ 
#    rprojroot \ 
#    rstudioapi \ 
#    rversions \ 
#    rvest \ 
#    scales \ 
#    selectr \ 
#    sessioninfo \ 
#    shiny \ 
#    sourcetools \ 
#    stringi \ 
#    stringr \ 
#    sys \ 
#    testthat \ 
#    tibble \ 
#    tidyr \ 
#    tidyselect \ 
#    tidyverse \ 
#    tinytex \ 
#    usethis \ 
#    utf8 \ 
#    uuid \ 
#    vctrs \ 
#    viridisLite \ 
#    whisker \ 
#    withr \ 
#    xgboost \ 
#    xml2 \ 
#    xopen \ 
#    xtable \ 
#    yaml \ 

