#include <stdio.h>
#define MAX 50

int p[MAX], w[MAX], n;

int knapsack(int i, int m);
int max(int a, int b);

int main() {
    int m, i, optsoln;

    printf("Enter no. of objects: ");
    scanf("%d", &n);

    printf("Enter the weights:\n");
    for(i = 1; i <= n; i++)
        scanf("%d", &w[i]);

    printf("Enter the profits:\n");
    for(i = 1; i <= n; i++)
        scanf("%d", &p[i]);

    printf("Enter the knapsack capacity: ");
    scanf("%d", &m);

    optsoln = knapsack(1, m);

    printf("The optimal solution is: %d\n", optsoln);

    return 0;
}

int knapsack(int i, int m) {
    if(i > n)
        return 0;

    if(w[i] > m)
        return knapsack(i + 1, m);

    return max(knapsack(i + 1, m),
               knapsack(i + 1, m - w[i]) + p[i]);
}

int max(int a, int b) {
    return (a > b) ? a : b;
}
