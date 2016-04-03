#include <stdio.h>

void fizzbuzz(int x, int y, int n);

int main(int argc, const char * argv[]) {
    FILE *file = fopen(argv[1], "r");
    int x, y, n;
    while (fscanf(file, "%d %d %d", &x, &y, &n) !=  EOF) {
        fizzbuzz(x, y, n);
    }
    return 0;
}

void fizzbuzz(int x, int y, int n)
{
    for (int i = 1; i <= n; i++) {
        if (i%x == 0 && i%y == 0) {
            printf("FB");
        } else if (i%x == 0) {
            printf("F");
        } else if (i%y == 0) {
            printf("B");
        } else {
            printf("%d", i);
        }
        printf(" ");
    }
    printf("\r\n");
}
