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
	x-cause-y/x-cause-y.html \
	causal-inference/causal-inference_esp.html \
	cluster-random/cluster-random_esp.html \
	covariates/covariates_esp.html \
	effect-types/effect-types_esp.html \
	external-validity/extval_esp.html \
	hypothesistesting/hypothesistesting_esp.html \
	measurement/measurement_esp.html \
	mechanisms/10thingsaboutmechanisms_esp.html \
	pap/pap_esp.html \
	power/power_esp.html \
	randomization/randomization_esp.html \
	causal-inference/causal-inference_fr.html \
	cluster-random/cluster-random_fr.html \
	covariates/covariates_fr.html \
	effect-types/effect-types_fr.html \
	external-validity/extval_fr.html \
	hypothesistesting/hypothesistesting_fr.html \
	measurement/measurement_fr.html \
	mechanisms/10thingsaboutmechanisms_fr.html \
	pap/pap_fr.html \
	power/power_fr.html \
	randomization/randomization_fr.html

adaptive/adaptive.html:  adaptive/adaptive.Rmd
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

## French Versions
adaptive/adaptive_fr.html:                                    adaptive/adaptive_fr.Rmd
	Rscript -e "rmarkdown::render('./adaptive/adaptive_fr.Rmd')"

causal-inference/causal-inference_fr.html:                    causal-inference/causal-inference_fr.Rmd
	Rscript -e "rmarkdown::render('./causal-inference/causal-inference_fr.Rmd')"

cluster-random/cluster-random_fr.html:                        cluster-random/cluster-random_fr.Rmd
	Rscript -e "rmarkdown::render('./cluster-random/cluster-random_fr.Rmd')"

covariates/covariates_fr.html:                                covariates/covariates_fr.Rmd
	Rscript -e "rmarkdown::render('./covariates/covariates_fr.Rmd')"

effect-types/effect-types_fr.html:                            effect-types/effect-types_fr.Rmd
	Rscript -e "rmarkdown::render('./effect-types/effect-types_fr.Rmd')"

eval_conversations/eval_conversations_fr.html:                eval_conversations/eval_conversations_fr.Rmd
	Rscript -e "rmarkdown::render('./eval_conversations/eval_conversations_fr.Rmd')"

external-validity/extval_fr.html:                             external-validity/extval_fr.Rmd
	Rscript -e "rmarkdown::render('./external-validity/extval_fr.Rmd')"

hte/heteffects_fr.html:                                       hte/heteffects_fr.Rmd
	Rscript -e "rmarkdown::render('./hte/heteffects_fr.Rmd')"

## this guide uses its own local renv package setup.
hypothesistesting/hypothesistesting_fr.html:                  hypothesistesting/hypothesistesting_fr.Rmd
	 cd hypothesistesting; Rscript -e "rmarkdown::render('hypothesistesting_fr.Rmd')"

implementation/implementation_fr.html:                        implementation/implementation_fr.Rmd
	Rscript -e "rmarkdown::render('./implementation/implementation_fr.Rmd')"

late/late_fr.html:                                            late/late_fr.Rmd
	Rscript -e "rmarkdown::render('./late/late_fr.Rmd')"

measurement/measurement_fr.html:                              measurement/measurement_fr.Rmd
	Rscript -e "rmarkdown::render('./measurement/measurement_fr.Rmd')"

mechanisms/10thingsaboutmechanisms_fr.html:                   mechanisms/10thingsaboutmechanisms_fr.Rmd
	Rscript -e "rmarkdown::render('./mechanisms/10thingsaboutmechanisms_fr.Rmd')"

meta-analysis/meta-analysis_fr.html:                          meta-analysis/meta-analysis_fr.Rmd
	Rscript -e "rmarkdown::render('./meta-analysis/meta-analysis_fr.Rmd')"

missing_data/missing_data_fr.html:                            missing_data/missing_data_fr.Rmd
	Rscript -e "rmarkdown::render('./missing_data/missing_data_fr.Rmd')"

multiple-comparisons/multiple-comparisons_fr.html:            multiple-comparisons/multiple-comparisons_fr.Rmd
	Rscript -e "rmarkdown::render('./multiple-comparisons/multiple-comparisons_fr.Rmd')"

null/null_results_fr.html:                                    null/null_results_fr.Rmd
	Rscript -e "rmarkdown::render('./null/null_results_fr.Rmd')"

pap/pap_fr.html:                                              pap/pap_fr.Rmd
	Rscript -e "rmarkdown::render('./pap/pap_fr.Rmd')"

pilots/10_things_to_know_about_pilots_fr.html:                pilots/10_things_to_know_about_pilots_fr.Rmd
	Rscript -e "rmarkdown::render('./pilots/10_things_to_know_about_pilots_fr.Rmd')"

power/power_fr.html:                                          power/power_fr.Rmd
	Rscript -e "rmarkdown::render('./power/power_fr.Rmd')"

randomization/randomization_fr.html:                          randomization/randomization_fr.Rmd
	Rscript -e "rmarkdown::render('./randomization/randomization_fr.Rmd')"

reg-table/reg-table_fr.html:                                  reg-table/reg-table_fr.Rmd
	Rscript -e "rmarkdown::render('./reg-table/reg-table_fr.Rmd')"

ri/ri_fr.html:                                                ri/ri_fr.Rmd
	Rscript -e "rmarkdown::render('./ri/ri_fr.Rmd')"

ri2/ri2_fr.html:                                              ri2/ri2_fr.Rmd
	Rscript -e "rmarkdown::render('./ri2/ri2_fr.Rmd')"

sampling/sampling_fr.html:                                    sampling/sampling_fr.Rmd
	Rscript -e "rmarkdown::render('./sampling/sampling_fr.Rmd')"

spillovers/spillovers_fr.html:                                spillovers/spillovers_fr.Rmd
	Rscript -e "rmarkdown::render('./spillovers/spillovers_fr.Rmd')"

survey_exp/svyExps_methods_guide_fr.html:                     survey_exp/svyExps_methods_guide_fr.Rmd
	Rscript -e "rmarkdown::render('./survey_exp/svyExps_methods_guide_fr.Rmd')"

workflow/workflow_fr.html:                                    workflow/workflow_fr.Rmd
	Rscript -e "rmarkdown::render('./workflow/workflow_fr.Rmd')"

x-cause-y/x-cause-y_fr.html:                                  x-cause-y/x-cause-y_fr.Rmd
	Rscript -e "rmarkdown::render('./x-cause-y/x-cause-y_fr.Rmd')"

## Spanish Versions
adaptive/adaptive_esp.html:                                    adaptive/adaptive_esp.Rmd
	Rscript -e "rmarkdown::render('./adaptive/adaptive_esp.Rmd')"

causal-inference/causal-inference_esp.html:                    causal-inference/causal-inference_esp.Rmd
	Rscript -e "rmarkdown::render('./causal-inference/causal-inference_esp.Rmd')"

cluster-random/cluster-random_esp.html:                        cluster-random/cluster-random_esp.Rmd
	Rscript -e "rmarkdown::render('./cluster-random/cluster-random_esp.Rmd')"

covariates/covariates_esp.html:                                covariates/covariates_esp.Rmd
	Rscript -e "rmarkdown::render('./covariates/covariates_esp.Rmd')"

effect-types/effect-types_esp.html:                            effect-types/effect-types_esp.Rmd
	Rscript -e "rmarkdown::render('./effect-types/effect-types_esp.Rmd')"

eval_conversations/eval_conversations_esp.html:                eval_conversations/eval_conversations_esp.Rmd
	Rscript -e "rmarkdown::render('./eval_conversations/eval_conversations_esp.Rmd')"

external-validity/extval_esp.html:                             external-validity/extval_esp.Rmd
	Rscript -e "rmarkdown::render('./external-validity/extval_esp.Rmd')"

hte/heteffects_esp.html:                                       hte/heteffects_esp.Rmd
	Rscript -e "rmarkdown::render('./hte/heteffects_esp.Rmd')"

## this guide uses its own local renv package setup.
hypothesistesting/hypothesistesting_esp.html:                  hypothesistesting/hypothesistesting_esp.Rmd
	 cd hypothesistesting; Rscript -e "rmarkdown::render('hypothesistesting_esp.Rmd')"

implementation/implementation_esp.html:                        implementation/implementation_esp.Rmd
	Rscript -e "rmarkdown::render('./implementation/implementation_esp.Rmd')"

late/late_esp.html:                                            late/late_esp.Rmd
	Rscript -e "rmarkdown::render('./late/late_esp.Rmd')"

measurement/measurement_esp.html:                              measurement/measurement_esp.Rmd
	Rscript -e "rmarkdown::render('./measurement/measurement_esp.Rmd')"

mechanisms/10thingsaboutmechanisms_esp.html:                   mechanisms/10thingsaboutmechanisms_esp.Rmd
	Rscript -e "rmarkdown::render('./mechanisms/10thingsaboutmechanisms_esp.Rmd')"

meta-analysis/meta-analysis_esp.html:                          meta-analysis/meta-analysis_esp.Rmd
	Rscript -e "rmarkdown::render('./meta-analysis/meta-analysis_esp.Rmd')"

missing_data/missing_data_esp.html:                            missing_data/missing_data_esp.Rmd
	Rscript -e "rmarkdown::render('./missing_data/missing_data_esp.Rmd')"

multiple-comparisons/multiple-comparisons_esp.html:            multiple-comparisons/multiple-comparisons_esp.Rmd
	Rscript -e "rmarkdown::render('./multiple-comparisons/multiple-comparisons_esp.Rmd')"

null/null_results_esp.html:                                    null/null_results_esp.Rmd
	Rscript -e "rmarkdown::render('./null/null_results_esp.Rmd')"

pap/pap_esp.html:                                              pap/pap_esp.Rmd
	Rscript -e "rmarkdown::render('./pap/pap_esp.Rmd')"

pilots/10_things_to_know_about_pilots_esp.html:                pilots/10_things_to_know_about_pilots_esp.Rmd
	Rscript -e "rmarkdown::render('./pilots/10_things_to_know_about_pilots_esp.Rmd')"

power/power_esp.html:                                          power/power_esp.Rmd
	Rscript -e "rmarkdown::render('./power/power_esp.Rmd')"

randomization/randomization_esp.html:                          randomization/randomization_esp.Rmd
	Rscript -e "rmarkdown::render('./randomization/randomization_esp.Rmd')"

reg-table/reg-table_esp.html:                                  reg-table/reg-table_esp.Rmd
	Rscript -e "rmarkdown::render('./reg-table/reg-table_esp.Rmd')"

ri/ri_esp.html:                                                ri/ri_esp.Rmd
	Rscript -e "rmarkdown::render('./ri/ri_esp.Rmd')"

ri2/ri2_esp.html:                                              ri2/ri2_esp.Rmd
	Rscript -e "rmarkdown::render('./ri2/ri2_esp.Rmd')"

sampling/sampling_esp.html:                                    sampling/sampling_esp.Rmd
	Rscript -e "rmarkdown::render('./sampling/sampling_esp.Rmd')"

spillovers/spillovers_esp.html:                                spillovers/spillovers_esp.Rmd
	Rscript -e "rmarkdown::render('./spillovers/spillovers_esp.Rmd')"

survey_exp/svyExps_methods_guide_esp.html:                     survey_exp/svyExps_methods_guide_esp.Rmd
	Rscript -e "rmarkdown::render('./survey_exp/svyExps_methods_guide_esp.Rmd')"

workflow/workflow_esp.html:                                    workflow/workflow_esp.Rmd
	Rscript -e "rmarkdown::render('./workflow/workflow_esp.Rmd')"

x-cause-y/x-cause-y_esp.html:                                  x-cause-y/x-cause-y_esp.Rmd
	Rscript -e "rmarkdown::render('./x-cause-y/x-cause-y_esp.Rmd')"
