#!/usr/bin/php
<?php

// die(929); // Quickest approach to enunciate

$cache = [];
printf("%s\n", greaterPrimePalindromic(1000));
exit(0);


function isPalindromic($number)
{
    $number.='';
    switch (strlen($number)) {
        case 1: return true;
        case 2: return $number[0] == $number[1];
        case 3: return $number[0] == $number[2];
    }
}

function isPrimeCached($number)
{
    global $cache;

    if (!array_key_exists($number, $cache)) {
        $cache[$number] = isPrime($number);
    }

    return $cache[$number];
}


function isPrime($number)
{
    if (function_exists('gmp_prob_prime')) {
        // Shortcut
        return gmp_prob_prime($number) > 0;
    }

    if ($number <= 1) {
        return false;
    } else if ($number <= 3) {
        return true;
    } else if ($number % 2 == 0 || $number % 3 == 0) {
        return false;
    } else {
        $i = 5;
        while ($i * $i <= $number) {
            if ($number % $i == 0 | $number % ($i + 2) == 0) {
                return false;
            }
            $i = $i + 6;
        }
    }

    return true;
}

function greaterPrimePalindromic($lessThan)
{
    for ($i = $lessThan-1; $i>1; $i--) {
        if(isPrimeCached($i) && isPalindromic($i)) {
            return $i;
        }
    }
}