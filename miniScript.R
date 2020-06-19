
# this should take some memory
binom.test(100000,10003864800,0.0001)

# this should take way less memory (works as expected)
# binom.test(1,10,.1)

Sys.sleep(5)

# producing the outputs
args = commandArgs(trailingOnly=TRUE)
oname = glue::glue("test_{args[1]}.tst")
fs::file_touch(oname);
