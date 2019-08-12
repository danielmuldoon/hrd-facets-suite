
library(facetsSuite)
library(pctGCdata)

test_facets_run = run_facets(test_read_counts)

test_that('function returns output', {
    test_output_names = c('snps', 'segs', 'purity', 'ploidy', 'diplogr')
    expect_is(test_facets_run, 'list')
    expect(all(test_output_names %in% names(test_facets_run)))
})