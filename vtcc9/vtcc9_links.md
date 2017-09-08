# Programming ... in Kotlin

* * *

### - Etymology for "coherence"

http://www.etymonline.com/index.php?term=coherent

* * *

### - Go To Statement Considered Harmful

https://edisciplinas.usp.br/pluginfile.php/1901807/mod_resource/content/1/p147-salton.pdf

*Originally titled "A Case Against the Go To Statement"*

https://www.cs.utexas.edu/users/EWD/ewd02xx/EWD215.PDF

*our intellectual powers are rather geared to master static relations and that our powers to visualize processes evolving in time are relatively poorly developed. For that reason we should [...] shorten the conceptual gap between the static program and the dynamic process, to make the correspondence between the program (spread out in text space) and the process (spread out in time) as trivial as possible.*

#### Late binding and side-effecting code are the antithesis of this.

* * *


### - JDK download

http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

*You have to hit checkbox for "Accept License Agreement"*

* * *

### - Intellij download

https://www.jetbrains.com/idea/download

*The Community Edition doesn't include Javascript.*


* * *

### - Kotlin dependencies

```
// build.gradle

dependencies {
    compile "org.jetbrains.kotlin:kotlin-stdlib-jre8:$kotlin_version"
    testCompile group: 'junit', name: 'junit', version: '4.12'
    compile 'com.pholser:junit-quickcheck-core:0.7'
    compile 'com.pholser:junit-quickcheck-generators:0.7'
}
```

http://pholser.github.io/junit-quickcheck/site/0.7/

* * *


### - Manchester Small-Scale Experimental Machine

https://csdl-images.computer.org/mags/an/2005/03/figures/a30441.gif

*June 21, 1948 - Program runs successfully on first binary, digital, electronic stored-program computer (in which data and instructions are stored in same memory)*

* * *

### - First successful "stored" program (Manchester SSEM)

http://images.computerhistory.org/revonline/images/500004282-03-01.jpg?w=600

*Highest proper factor using subtraction instead of division*

* * *

### - Highest proper factor (#1)
```
fun main(args: Array<String>) {
    val input = 12
    var remainder = input
    var factor = input - 1

    while (factor > 1) {
	while (remainder >= 0) {
	    if (remainder == 0) {
		println(factor) // Setting state of environment
		return          // GOTO
	    }
	    remainder = remainder - factor
	}
	remainder = input
	factor--
    }
}
```

- No annotations of type
- val vs var
- destructive assignment
- going to destroy it elsewhere
- 'remainder' is not remainder at first; naming misleads
- nested println modifies state in the environment, not in the program
- nested return is a jump (ie GO TO)
- command nesting leads to dependency gap that will be jumped over

#### But is this correct?

* * *

### - Robert W Floyd, In Memoriam by Donald Knuth

https://youtu.be/OJsMXu3EPCw?t=29m43s

http://www-cs-faculty.stanford.edu/~uno/papers/floyd.ps.gz

*The accepted methodology for program construction was [...]: People would write code and make test runs, then find bugs and make patches, then find more bugs and make more patches, and so on until not being able to discover any further errors, yet always living in dread for fear that a new case would turn up on the next day and lead to a new type of failure*

* * *

### - Domain, Co-domain, Range

https://upload.wikimedia.org/wikipedia/commons/6/64/Codomain2.SVG

* * *

### - Function (extensional)

https://saylordotorg.github.io/text_intermediate-algebra/section_05/f0f80432cf5e496a04ecfd8ce9423065.png

* * *

### - ENIAC

http://s7.computerhistory.org/is/image/CHM/102652279-03-01?$re-medium$

* * *


### - Presper Eckert & John Mauchly

http://1.bp.blogspot.com/-Z_JlpTAseR4/U8zukd-nauI/AAAAAAAAAIk/DN6sDc-wh5E/s1600/8.jpg


* * *
