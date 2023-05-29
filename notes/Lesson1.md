# Where in the Genome Does Replication Begin?

## 1.1 A Journey of a Thousand Miles...

- **Replication origin**
    - Location where replications begins.
    - Also known or denoted as *ori*.
    - This is found within the *genomic region*.

- **DNA Polymerases**
    - Enzymes used to replicate DNA.
    - **used within the replication origin

- **viral vectors**
    - Genetically engineered mini-genomes.
    - Used for gene therapy.
    - Possess ability to penetrate the cell wall.
    - carries artificial genes.

### STOP and Think Section

**The Problem**: Assume that a genome has a single *ori* and is represented as a DNA string (A sequence of nucleotides from the four-letter alphabett {A, C, G, T}).

**The Input**: A DNA string Genome.
**The Output**: The location of ori in Genome

**Question**: *Does this biological problem represent a clearly stated computational problem?*

**Response**: *This problem does not represent a computational problem. The solution involves the discovery of the *ori* or *replication origin*. This location can be found through a number of techniques depending on the type of DNA (i.e. bacterial vs chromosomal). Because of the aforementioned, the problem is not clearly defined. The discovery of the replication origin is complex.*

## 1.2 Hidden Messages in the Replication Origin (Part 1)

- Replication origin *ori* of Vibrio Cholerae is being used as an example
    - This species is the pathogenic bacterium which causes cholera (An accute, diarrheal illness caused by infection of the intestine).

**Nucleotide Sequence of Example (ori)**:[Vibrio Cholerae]("data/O139.txt")

### Stop and Think Section

**The Problem**: How does the bacterial cell know to begin replication exactly in the short region (*ori*) within the Vibrio Cholerae chromosome, which consists of over a million nucleotides? There must be some hidden message. This hidden message is the *DnaA Box*, which is a section of the ori that binds to the *DnaA*. Can the *DnaA box* be found without knowing beforehand?

**The Input**: A string Text.
**The Output**: A hidden message in Text.

**Question**: *Does the Hidden Message Problem represent a clearly stated computational problem?*

**Response**: The hidden message problem does not represent a clearly stated computational problem. We cannot figure out the location of the DnaA Box with the current amount of information.

### Hidden messages in "The Gold-Bug"

- The *Hidden Message Problem* does not make sense to a computer scientist because the "hidden message" is not precisely defined.
- The *ori* region of *Vibrio cholerae* is at the moment as puzzling as the parchment discovered by William Legrand.
    - This is a problem with little to no solution:
        53‡‡†305))6·;4826)4‡.)4‡);806·;48†8^60))85;161;:‡·8
        †83(88)5·†;46(;88·96·?;8)·‡(;485);5·†2:·‡(;4956·2(5
        ·—4)8^8·;4069285);)6†8)4‡‡;1(‡9;48081;8:8‡1;48†85;4
        )485†528806·81(‡9;48;(88;4(‡?34;48)4‡;1‡(;:188;‡?;

- **k-mer** is a term for finding patterns within all nucleotides. The pattern is of length k.

### Discovering K-mers

1. First create a count equal to 0.
2. search for matching pattern through a window.
3. Increase count if pattern is found and continue using window.

### Exercise Break
**Question**: At what position would we stop sliding a 10-nucleotide window along a string of length 1000?

**Response**: Since the nucleotide is of length 1000 and the pattern is only 10 nucleotide long, we can observe that the last window begins at the position 990 and ends in the position 999. Thus the last position of the slide is 990.

- Take note that the final k-mer occurs at position n-k.

## 1.3 Hidden Messages in the Replication Origin (Part 2)

### Stop and Think Section

**Question**: Can a string have multiple most frequent k-mers?

**Answer**: There can be multiple most frequent k-mers. This is possible depending upon the definition of k.

- There is now a solution to the issue of translating biological problems to one that is readable to computer scientists.
    - The problem is now a Frequent Words Problem (*Find the most frequenet k-mers in a string).
    - **The Input**: A string Text and an integer k.
    - **The Output**: All most frequent k-mers in Text.

**Response**: This can be done using a pattern counting system of multiple k-mers (i.e 2, 3, 4, 5, etc.).

- To determine the most frequent k-mer, and to know which one is the most frequent k-mer, one must develop something called a mapping that matches the k-mer to the frequency of said k-mer (see example below).

ATA --> 3
ATC --> 1
CAT --> 1
CCA --> 1
CGA --> 1
GAT --> 1
TAT --> 2
TCC --> 1
TAG --> 1
