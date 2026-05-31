#include <stdio.h>
int a[20], n, sum;
int x[20];
int count = 0;
void subset(int k, int s){
    if (s == sum){
        count++;
        printf("Subset %d\n", count);

        for (int i = 0; i < k; i++){
            if (x[i] == 1)
                printf("%d ", a[i]);}
        printf("\n");
        return;}
    if (k >= n || s > sum) return;
    x[k] = 1;
    subset(k + 1, s + a[k]);
    x[k] = 0;
    subset(k + 1, s);}
int main(){
    printf("Enter the no. of elements: ");
    scanf("%d", &n);
    printf("Enter the elements in ascending order:\n");
    for (int i = 0; i < n; i++)
        scanf("%d", &a[i]);
    printf("Enter the sum: ");
    scanf("%d", &sum);
    subset(0, 0);
    return 0;}
