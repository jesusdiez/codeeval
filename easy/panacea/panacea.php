#!/usr/bin/php
<?php

$lines = file($argv[1]);
$sum = function ($a, $b) { return $a + $b; };

foreach ($lines as $line) {
    list($viruses, $solutions) = parse($line);

    $sumViruses   = array_reduce($viruses, $sum);
    $sumSolutions = array_reduce($solutions, $sum);

    printf("%s\n", ($sumViruses <= $sumSolutions) ? 'True' : 'False');
}
exit(0);

function parse($line)
{
    list($encodedVirusText, $encodedAntivirText) = explode('|', trim($line));
    return [
        array_map('hexdec', explode(' ', trim($encodedVirusText))),
        array_map('bindec', explode(' ', trim($encodedAntivirText))),
    ];
}

