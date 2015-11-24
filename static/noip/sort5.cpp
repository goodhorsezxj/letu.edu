#include <stdio.h>

int sort(int* a, int p, int q)
{
    int tmp[101];
    if (p + 1 >= q) 
        return 0;
    int m = (p+q) / 2;
    int num1 = sort(a, p, m);
    int num2 = sort(a, m, q);
    int i = p, j = m, L = 0;
    int num3 = 0;
    while (i < m && j < q) {
        if (a[i] <= a[j]) {
            tmp[L++] = a[i];
            i++;
        } else {
            num3 += m - i;
            tmp[L++] = a[j];
            j++;
        }
    }
    while (i < m) {
        tmp[L++] = a[i];
        i++;
    }
    while (j < q) {
        tmp[L++] = a[j];
        j++;
    }
    for (i = 0; i < L; i++)
        a[p+i] = tmp[i];
    return num1 + num2 + num3;
}

int main()
{
    freopen("sort5.in", "r", stdin);
    freopen("sort5.out", "w", stdout);
    int a[101];
    int L;
    while(scanf("%d", &L) != EOF) {
        for (int i = 0; i < L; i++)
            scanf("%d", &a[i]);
        int num = sort(a, 0, L);
        for (int i = 0; i < L; i++) {
            if (i > 0)
                printf(" ");
            printf("%d", a[i]);
        }
        printf("\n");
        printf("%d\n", num);
    }
    return 0;
}
