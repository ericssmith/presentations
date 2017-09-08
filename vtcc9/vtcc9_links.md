### - Etymology for "coherence"

http://www.etymonline.com/index.php?term=coherent


### - Go To Statement Considered Harmful

https://edisciplinas.usp.br/pluginfile.php/1901807/mod_resource/content/1/p147-salton.pdf

*Originally titled "A Case Against the Go To Statement"*

https://www.cs.utexas.edu/users/EWD/ewd02xx/EWD215.PDF



### - JDK download

http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

*You have to hit checkbox for "Accept License Agreement"*


### - Intellij download

https://www.jetbrains.com/idea/download

*The Community Edition doesn't include Javascript.*



### - Manchester Small-Scale Experimental Machine

https://csdl-images.computer.org/mags/an/2005/03/figures/a30441.gif

*June 21, 1948 - Program runs successfully on first binary, digital, electronic stored program computer (in which data and instructions are stored in same memory)*



### - ENIAC

http://s7.computerhistory.org/is/image/CHM/102652279-03-01?$re-medium$



### - Presper Eckert & John Mauchly

http://1.bp.blogspot.com/-Z_JlpTAseR4/U8zukd-nauI/AAAAAAAAAIk/DN6sDc-wh5E/s1600/8.jpg

### - First successful program (Manchester SSEM)

http://images.computerhistory.org/revonline/images/500004282-03-01.jpg?w=600

*Highest proper factor using subtraction instead of division*


### - Highest proper factor

```
fun main(args: Array<String>) {
    var input = 12
    var remainder = input  // will count down in inner loop;
    var factor = input - 1 // divisor; why not just call it that? How is that different than properFactor?

    while (factor > 1) { // smallest possible proper properFactor
	// Check if proper factor
	while (remainder >= 0) {
	    if (remainder == 0) { // divides evenly; output & get out
		println(factor) // modifying environment state
		return // goto?
	    }
	    remainder = remainder - factor
	}
	remainder = input // reset
	factor-- // try next number
    }
}
```
