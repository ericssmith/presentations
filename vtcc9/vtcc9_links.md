#### - Etymology for "coherence"

http://www.etymonline.com/index.php?term=coherent


#### - JDK download

http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

*You have to hit checkbox for "Accept License Agreement"*


#### - Intellij download

https://www.jetbrains.com/idea/download

*The Community Edition doesn't include Javascript.*



#### - Manchester Small-Scale Experimental Machine

https://csdl-images.computer.org/mags/an/2005/03/figures/a30441.gif

*June 21, 1948 - Program runs successfully on first binary, digital, electronic stored program computer (in which data and instructions are stored in same memory)*


#### - Max proper factor

```
fun main(args: Array<String>) {
    var input = 12
    var remainder = input  // will count down in inner loop;
    var factor = input - 1 // divisor; why not just call it that? How is that different than properFactor?

    while (factor > 2) { // smallest possible proper properFactor
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


### - ENIAC

http://s7.computerhistory.org/is/image/CHM/102652279-03-01?$re-medium$
