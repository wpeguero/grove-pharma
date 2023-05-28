# SPDX-License-Identifier: MIT

# This file will contain all of the code pertaining to the loading, extraction and transformation of the dataset.
using BioSequences
using FASTX

open(FASTA.Reader, "data/MN908947.txt") do reader
	for record in reader
		covid_seq = LongDNASeq(FASTA.sequence(record))
	end
end

