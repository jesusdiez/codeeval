#!/usr/bin/php
<?php
if ($argc == 0) {
    echo "Invalid number of parameters.";
    exit(-1);
}
$lines = file($argv[1]);
foreach($lines as $case) {
    list($weight, $things) = parse($case);

}
exit(0);
