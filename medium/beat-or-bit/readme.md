# BEAT OR BIT

### CHALLENGE DESCRIPTION:
All we love listening to music. For some of us, music helps to focus on the work, while for others — it has a soothing effect. People have different preferences: some of us like contemporary musicians, while others are fond of classical music.
According to some sources, many composers of old times created much more musical masterpieces than we are aware of today. There are several old analog records that need to be converted into a digital format. To minimize the possibility of errors that may emerge during the conversion, we decided to use the Gray code algorithm.

### INPUT SAMPLE:
The first argument is a path to a file. Each line includes a test case with binary numbers encrypted with the Grays code algorithm. Numbers are separated by pipelines '|'.
```
1111 | 1110
10 | 1100001 | 101
```

### OUTPUT SAMPLE:
Your task is to decode the encrypted numbers and print them in a decimal system, separating them by pipelines '|'. This is necessary to get the change in the pressure of sound waves and, thus, to more accurately reproduce the sounding of those times.
```
10 | 11
3 | 65 | 6
```

### CONSTRAINTS:
- The amount of binary numbers in a test case can be from 2 to 6.
- Encrypted numbers can be from 2 to 100.
- The number of test cases is 40.
