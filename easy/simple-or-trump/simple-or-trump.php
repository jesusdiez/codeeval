#!/usr/bin/php
<?php

$lines = file($argv[1]);
$sum = function ($a, $b) { return $a + $b; };

foreach ($lines as $line) {
    list($hand1, $hand2, $trump) = parse($line);

    $hand1Value = calculateHandValue($hand1, $trump);
    $hand2Value = calculateHandValue($hand2, $trump);

    if ($hand1Value > $hand2Value) {
        $output = implode('', $hand1);
    } elseif($hand1Value < $hand2Value) {
        $output = implode('', $hand2);
    } else {
        $output = sprintf("%s %s", implode('', $hand1), implode('', $hand2));
    }

    printf("%s\n", $output);
}
exit(0);

function calculateHandValue(array $hand, $trump) {
    $equivalences = [
        'J' => 11, 'Q' => 12, 'K' => 13, 'A' => 14,
    ];

    $multiplier = ($hand['suit'] == $trump) ? 100 : 1;

    $cardValue = array_key_exists($hand['val'], $equivalences) ? $equivalences[$hand['val']] : $hand['val'];

    return $cardValue * $multiplier;
}

function parse($line)
{
    $matches = [];
    $cardPattern = '(?:[2-9]|10|J|Q|K|A)';
    $suitPattern = '[H|C|S|D]';
    $pattern = '/^('.$cardPattern.')('.$suitPattern.') ('.$cardPattern.')('.$suitPattern.') \| ('.$suitPattern.')$/';
    preg_match($pattern, trim($line), $matches);

    return [
        ['val' => $matches[1], 'suit' => $matches[2]],
        ['val' => $matches[3], 'suit' => $matches[4]],
        $matches[5]
    ];
}
