---
title: "Multi-Trial Analysis Report"
author: "Contact:<a href = 'https://github.com/Breeding-Analytics/bioflow' target = '_blank'>Breeding Analytics Team, OneCGIAR</a> breedinganalytics@cgiar.org"
date: "October 20, 2024"  
output: html_document
params:
  toDownload: FALSE
---









### Objectives of Multi-Trial Analysis

The objective of this dashboard is to help scientist to understand the following points:

1. Overall number of entries and entry types included in the multi trial analysis (input)

2. High-level of the phenotypic adjusted means included in the analysis (input)

3. Number of entries connecting the different environments per trait (input)

3. Phenotypic correlation between environments for the traits present (input)

4. Across environment KPIs per trait such as reliability and variance component ratios (output) 

5. Individual across environment predictions for each trait (output) 

6. Individual sensitivity values according to the Finlay-Wilkinson model (Finlay & Wilkinson, 1963) (output)

7. Percent check comparison against the different benchmark varieties present in the dataset (output)

8. Genetic correlations between traits (output)

Understanding these data features should allow the scientist to identify which traits express more genotype by environment interactions and how they should be selected. It should also allow the scientist to assess the correlation between traits and how the product profile should be addressed to maximize genetic gains while developing the needed varieties at the same time. Materials with the highest performance and sensitivity to the environment could be potential nominations for advancement although we recommend to don't select new parents or products until the results from the multi-trial analysis are analyzed with a selection index.  

### Number of individuals per trait and entry type

The following table aims to make a high-level assessment of the different types of entries included in the analysis across environments.

<!--html_preserve--><div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="reportBuilder_1-out299779019997f1a1" style="width:100%;height:auto;"></div><!--/html_preserve-->




No coordinates available. Skipping planting map.

### By environment merit distribution

The following boxplot allows you to inspect the distribution of adjusted means (y-axis) from the different environments for each trait that were used as input for the analysis. The environments are sorted by environmental mean to understand the slope of the regression fitted in the Finlay-Wilkinson model. It is recommended that you have at least 6 environments to fit the random regressions over the environmental indices or other weather and soil variables

<p>&nbsp;</p>

<!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-traitMta-label" for="reportBuilder_1-traitMta"></label>
<div>
<select id="reportBuilder_1-traitMta" class="shiny-input-select"><option value="GYKGPHA" selected>GYKGPHA</option>
<option value="PH">PH</option>
<option value="DTF">DTF</option></select>
<script type="application/json" data-for="reportBuilder_1-traitMta" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div><!--/html_preserve-->

<!--html_preserve--><div class="shiny-plot-output html-fill-item" id="reportBuilder_1-outcfd7714152295d92" style="width:100%;height:400px;"></div><!--/html_preserve-->

### Connectivity between environments

The following heatmap and histogram allows you to assess the connectivity (gennotypes in common) between different environments for a given trait. Our recommendation is that each pair of environments should at least have 30 genotypes in common in order to estimate phenotypic and genetic correlations and at least 2-3 entries in common to adjust across environment means. We classify as low everything below 30, intermediate connectivity between 30 to 60, and high everything above 60.

<p>&nbsp;</p>

<!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-traitMtaConnect-label" for="reportBuilder_1-traitMtaConnect"></label>
<div>
<select id="reportBuilder_1-traitMtaConnect" class="shiny-input-select"><option value="GYKGPHA" selected>GYKGPHA</option>
<option value="PH">PH</option>
<option value="DTF">DTF</option></select>
<script type="application/json" data-for="reportBuilder_1-traitMtaConnect" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div><!--/html_preserve-->

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-out3629bb091247e7ff" style="width:100%;height:400px;"></div><!--/html_preserve-->

### Phenotypic correlations between environments

The following heatmap and histogram allows to assess the phenotypic correlations among the different environments one trait at a time. If the user modeled GxE, this matrix is calculated as the correlation between the environment-specific estimates for individuals. If a pure main-effect model is specified this matrix is calculated as the correlation between the single-trial analysis estimates. We recommend that only environments that are on-average positively correlated with the main cluster (i.e., rG>0) are included in the multi-trial analysis to guarantee decent rates of genetic gain and adapted products in the TPE.

<p>&nbsp;</p>

<!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-traitPredictionsCorrelation-label" for="reportBuilder_1-traitPredictionsCorrelation"></label>
<div>
<select id="reportBuilder_1-traitPredictionsCorrelation" class="shiny-input-select"><option value="GYKGPHA" selected>GYKGPHA</option>
<option value="PH">PH</option>
<option value="DTF">DTF</option></select>
<script type="application/json" data-for="reportBuilder_1-traitPredictionsCorrelation" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div><!--/html_preserve-->

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-out221b4dccf6e499c7" style="width:100%;height:400px;"></div><!--/html_preserve-->

<p>&nbsp;</p>

### Biplot by trait

The following graph allows to see the clustering of different genotypes in the TPE for each trait. This can help you identify clusters of environments and better define the TPE.


<p>&nbsp;</p>

<!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-traitBiplot-label" for="reportBuilder_1-traitBiplot"></label>
<div>
<select id="reportBuilder_1-traitBiplot" class="shiny-input-select"><option value="GYKGPHA" selected>GYKGPHA</option>
<option value="PH">PH</option>
<option value="DTF">DTF</option></select>
<script type="application/json" data-for="reportBuilder_1-traitBiplot" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div><!--/html_preserve-->

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-outb721fac4e458b1f0" style="width:100%;height:400px;"></div><!--/html_preserve-->


### Across-environment metrics

The following barplot aims to help you inspect the across environment estimates for multiple parameters from the multi-trial analysis such as across-environment reliability.

<!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-parameterMetrics2-label" for="reportBuilder_1-parameterMetrics2">Parameter:</label>
<div>
<select id="reportBuilder_1-parameterMetrics2" class="shiny-input-select"><option value="mean" selected>mean</option>
<option value="r2" selected>r2</option>
<option value="Vg" selected>Vg</option>
<option value="nEnv" selected>nEnv</option>
<option value="Vr" selected>Vr</option></select>
<script type="application/json" data-for="reportBuilder_1-parameterMetrics2" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div><!--/html_preserve-->

<!--html_preserve--><div class="shiny-plot-output html-fill-item" id="reportBuilder_1-outba122a43897dc433" style="width:100%;height:400px;"></div><!--/html_preserve-->

<p>&nbsp;</p>

The following graph allows you to assess the proportion of variance going to different components for the different traits. Above the bars you can see the value of the variance component for each factor. The residual variance is all the variance that could not be explained by the main effect and sensitivity effects. This values should be considered carefully depending of the genetic evaluation model used. For example, when sing the rrBLUP model the variance components reflect the marker variance and may look very small, but we can't conclude that there is not eough genetic signal.

<p>&nbsp;</p>

<!--html_preserve--><div class="shiny-plot-output html-fill-item" id="reportBuilder_1-out1380fd1e99339f01" style="width:100%;height:400px;"></div><!--/html_preserve-->

<p>&nbsp;</p>

### Across-environment merit estimates of top entries

In the left-side plot you can observe the comparison between the top 100 entries from each entry type category for the different traits. If a category has less than a 100 entries all individuals are displayed. This should allow you to identify the entries that could potentially become parents or nominated for advanced stages of evaluation. We would recommend you to wait until a selection index is calculated. In the right-side plot you can see a boxplot of the entire distribution of values for each entryType category so you know until which trait-values the rest of the entries that are not plotted in the left-side plot reach. 


<!--html_preserve--><div class="form-group shiny-input-container">
<label class="control-label" id="reportBuilder_1-traitMta2-label" for="reportBuilder_1-traitMta2"></label>
<div>
<select id="reportBuilder_1-traitMta2" class="shiny-input-select"><option value="GYKGPHA" selected>GYKGPHA</option>
<option value="PH">PH</option>
<option value="DTF">DTF</option></select>
<script type="application/json" data-for="reportBuilder_1-traitMta2" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div><!--/html_preserve-->

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-out95654c7f37ee7905" style="width:100%;height:400px;"></div><!--/html_preserve-->

<p>&nbsp;</p>










<p>&nbsp;</p>










### Genetic correlations between traits

The following heatmap and histogram allows to see the genetic correlations among traits calculated using across environment estimates of merit for the different traits. This can be used to understand the implications of selecting for a set of traits to achieve a product profile and make neccesary adjustment to the selection strategy.

<p>&nbsp;</p>

<!--html_preserve--><div class="plotly html-widget html-widget-output shiny-report-size shiny-report-theme html-fill-item" id="reportBuilder_1-out7df86c7f91867c19" style="width:100%;height:400px;"></div><!--/html_preserve-->

<p>&nbsp;</p>

### Predictions 

The following table allows you to inspect the trait predictions in wide format together with the QTL profile (in case those are available) to understand the type of data that would be used to calculate a selection index (e.g., desire index).

<p>&nbsp;</p>

<!--html_preserve--><div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="reportBuilder_1-out7d5e3858c34a23ed" style="width:100%;height:auto;"></div><!--/html_preserve-->



### Modeling parameters

This section aims to provide the modeling table for the analysis in order to keep track of which environments were used in the analysis, what was the final model used for each trait and other potentially important parameters for future reference.

<!--html_preserve--><div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="reportBuilder_1-out071959921fe29165" style="width:100%;height:auto;"></div><!--/html_preserve-->


### References of methods used

Finlay, K. W., & Wilkinson, G. N. (1963). The analysis of adaptation in a plant-breeding programme. Australian journal of agricultural research, 14(6), 742-754.

Henderson Jr, C. R. (1982). Analysis of covariance in the mixed model: higher-level, nonhomogeneous, and random regressions. Biometrics, 623-640.

Odegard, J., Indahl, U., Stranden, I., & Meuwissen, T. H. (2018). Large-scale genomic prediction using singular value decomposition of the genotype matrix. Genetics Selection Evolution, 50(1), 1-12.

R Core Team (2021). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL https://www.R-project.org/.

Boer M, van Rossum B (2022). LMMsolver: Linear Mixed Model Solver. R package version 1.0.4.9000.

Covarrubias-Pazaran G. 2016. Genome assisted prediction of quantitative traits using the R package sommer. PLoS ONE 11(6):1-15.

<p>&nbsp;</p>


