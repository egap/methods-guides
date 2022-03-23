## A Makefile to help build or rebuild all of the guides using Github Actions.
SHELL = /bin/sh

all: adaptive/adaptive.html \
	causal-inference/causal-inference.html \
	cluster-random/cluster-random.html \
	covariates/covariates.html \
	effect-types/effect-types.html \
	eval_conversations/eval_conversations.html \
	external-validity/extval.html \
	hte/heteffects.html \
	hypothesistesting/hypothesistesting.html \
	implementation/implementation.html \
	late/late.html \
	measurement/measurement.html \
	mechanisms/10thingsaboutmechanisms.html \
	meta-analysis/meta-analysis.html \
	missing_data/missing_data.html \
	multiple-comparisons/multiple-comparisons.html \
	null/null_results.html \
	pap/pap.html \
	pilots/10_things_to_know_about_pilots.html \
	power/power.html \
	randomization/randomization.html \
	reg-table/reg-table.html \
	ri/ri.html \
	ri2/ri2.html \
	sampling/sampling.html \
	spillovers/spillovers.html \
	survey_exp/svyExps_methods_guide.html \
	workflow/workflow.html \
	x-cause-y/x-cause-y.html

adaptive/adaptive.html:                                    adaptive/adaptive.Rmd
	Rscript -e "rmarkdown::render('./adaptive/adaptive.Rmd')"

causal-inference/causal-inference.html:                    causal-inference/causal-inference.Rmd
	Rscript -e "rmarkdown::render('./causal-inference/causal-inference.Rmd')"

cluster-random/cluster-random.html:                        cluster-random/cluster-random.Rmd
	Rscript -e "rmarkdown::render('./cluster-random/cluster-random.Rmd')"

covariates/covariates.html:                                covariates/covariates.Rmd
	Rscript -e "rmarkdown::render('./covariates/covariates.Rmd')"

effect-types/effect-types.html:                            effect-types/effect-types.Rmd
	Rscript -e "rmarkdown::render('./effect-types/effect-types.Rmd')"

eval_conversations/eval_conversations.html:                eval_conversations/eval_conversations.Rmd
	Rscript -e "rmarkdown::render('./eval_conversations/eval_conversations.Rmd')"

external-validity/extval.html:                             external-validity/extval.Rmd
	Rscript -e "rmarkdown::render('./external-validity/extval.Rmd')"

hte/heteffects.html:                                       hte/heteffects.Rmd
	Rscript -e "rmarkdown::render('./hte/heteffects.Rmd')"

## this guide uses its own local renv package setup.
hypothesistesting/hypothesistesting.html:                  hypothesistesting/hypothesistesting.Rmd
	 cd hypothesistesting; Rscript -e "rmarkdown::render('hypothesistesting.Rmd')"

implementation/implementation.html:                        implementation/implementation.Rmd
	Rscript -e "rmarkdown::render('./implementation/implementation.Rmd')"

late/late.html:                                            late/late.Rmd
	Rscript -e "rmarkdown::render('./late/late.Rmd')"

measurement/measurement.html:                              measurement/measurement.Rmd
	Rscript -e "rmarkdown::render('./measurement/measurement.Rmd')"

mechanisms/10thingsaboutmechanisms.html:                   mechanisms/10thingsaboutmechanisms.Rmd
	Rscript -e "rmarkdown::render('./mechanisms/10thingsaboutmechanisms.Rmd')"

meta-analysis/meta-analysis.html:                          meta-analysis/meta-analysis.Rmd
	Rscript -e "rmarkdown::render('./meta-analysis/meta-analysis.Rmd')"

missing_data/missing_data.html:                            missing_data/missing_data.Rmd
	Rscript -e "rmarkdown::render('./missing_data/missing_data.Rmd')"

multiple-comparisons/multiple-comparisons.html:            multiple-comparisons/multiple-comparisons.Rmd
	Rscript -e "rmarkdown::render('./multiple-comparisons/multiple-comparisons.Rmd')"

null/null_results.html:                                    null/null_results.Rmd
	Rscript -e "rmarkdown::render('./null/null_results.Rmd')"

pap/pap.html:                                              pap/pap.Rmd
	Rscript -e "rmarkdown::render('./pap/pap.Rmd')"

pilots/10_things_to_know_about_pilots.html:                pilots/10_things_to_know_about_pilots.Rmd
	Rscript -e "rmarkdown::render('./pilots/10_things_to_know_about_pilots.Rmd')"

power/power.html:                                          power/power.Rmd
	Rscript -e "rmarkdown::render('./power/power.Rmd')"

randomization/randomization.html:                          randomization/randomization.Rmd
	Rscript -e "rmarkdown::render('./randomization/randomization.Rmd')"

reg-table/reg-table.html:                                  reg-table/reg-table.Rmd
	Rscript -e "rmarkdown::render('./reg-table/reg-table.Rmd')"

ri/ri.html:                                                ri/ri.Rmd
	Rscript -e "rmarkdown::render('./ri/ri.Rmd')"

ri2/ri2.html:                                              ri2/ri2.Rmd
	Rscript -e "rmarkdown::render('./ri2/ri2.Rmd')"

sampling/sampling.html:                                    sampling/sampling.Rmd
	Rscript -e "rmarkdown::render('./sampling/sampling.Rmd')"

spillovers/spillovers.html:                                spillovers/spillovers.Rmd
	Rscript -e "rmarkdown::render('./spillovers/spillovers.Rmd')"

survey_exp/svyExps_methods_guide.html:                     survey_exp/svyExps_methods_guide.Rmd
	Rscript -e "rmarkdown::render('./survey_exp/svyExps_methods_guide.Rmd')"

workflow/workflow.html:                                    workflow/workflow.Rmd
	Rscript -e "rmarkdown::render('./workflow/workflow.Rmd')"

x-cause-y/x-cause-y.html:                                  x-cause-y/x-cause-y.Rmd
	Rscript -e "rmarkdown::render('./x-cause-y/x-cause-y.Rmd')"
