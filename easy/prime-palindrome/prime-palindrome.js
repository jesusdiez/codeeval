var cache = [];
console.log(greaterPrimePalindromic(1000));


function isPalindromic(number)
{
    number = number + '';
    switch (number.length) {
        case 1: return true;
        case 2: return number[0] == number[1];
        case 3: return number[0] == number[2];
    }
}

function isPrimeCached(number)
{
    if (cache[number] == undefined) {
        cache[number] = isPrime(number);
    }

    return cache[number];
}


function isPrime(number)
{
    if (number <= 1) {
        return false;
    } else if (number <= 3) {
        return true;
    } else if (number % 2 == 0 || number % 3 == 0) {
        return false;
    } else {
        var i = 5;
        while (i * i <= number) {
            if (number % i == 0 | number % (i + 2) == 0) {
                return false;
            }
            i = i + 6;
        }
    }

    return true;
}

function greaterPrimePalindromic(lessThan)
{
    for (var i = lessThan - 1; i>1; i--) {
        if(isPrimeCached(i) && isPalindromic(i)) {
            return i;
        }
    }
}