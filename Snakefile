

LETTERS = ["A","B","C"]

rule all:
	input:
		expand("test_{letter}.tst", letter = LETTERS)

rule script:
	input:

	output:
		"test_{letter}.tst"
	shell:
		"Rscript miniScript.R {wildcards.letter}"


