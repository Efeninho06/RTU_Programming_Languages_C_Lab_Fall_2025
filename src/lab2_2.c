#include <stdio.h>

long long factorial(int n) {
    long long f = 1;
    for (int i = 2; i <= n; i++) {
        f *= i;
    }
    return f;
}

int main(void) {
    int n;
    printf("Enter n: ");
    if (scanf("%d", &n) != 1) {
        printf("Error: invalid input.\n");
        return 1;
    }
    if (n < 0) {
        printf("Error: n must be >= 0.\n");
        return 1;
    }
    if (n > 20) {
        printf("Warning: result may overflow for n > 20.\n");
    }
    long long result = factorial(n);
    printf("%d! = %lld\n", n, result);
    return 0;
}
