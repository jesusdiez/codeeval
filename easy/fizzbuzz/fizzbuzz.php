#!/usr/bin/php
<?php
$lines = file($argv[1]);
foreach($lines as $case) {
    list($x, $y, $n) = parse($case);
    echo fizzbuzz($x, $y, $n);
}
exit(0);

function parse($case)
{
    return array_map('intval', explode(' ', $case));
}

function fizzbuzz($x, $y, $n)
{
    for ($i = 1; $i <= $n; $i++) {
        if ($i%$x == 0 && $i%$y == 0) {
            echo 'FB';
        } elseif ($i%$x == 0) {
            echo 'F';
        } elseif ($i%$y == 0) {
            echo 'B';
        } else {
            echo $i;
        }
        echo ' ';
    }
    echo PHP_EOL;
}