#include <stdio.h>

int max(int a, int b)
{
    if (a > b)
        return a;
    return b;
}

int get_max_sum(int* a, int L)
{
    int p = 0;
    int max_sum = 0;
    int tmp_sum = 0;
    while (p < L) {
        if (a[p] != 0) {
            tmp_sum += a[p];
        } else if (tmp_sum > 0) {
            max_sum = max(max_sum, tmp_sum);
            tmp_sum = 0;
        }
        p++;
    }
    max_sum = max(max_sum, tmp_sum);
    return max_sum;
}

int main()
{
    int a[101];
    int L;
    int n;
    int end_flag = 0;
    int max_sum;
    freopen("maxseg.in", "r", stdin);
    freopen("maxseg.out", "w", stdout);
    while(1) {
        L = 0;
        while(1) {
            if (scanf("%d", &n) == EOF) {
                end_flag = 1;
                break;
            }
            if (n == -1)
                break;
            a[L++] = n;
        }
        if (end_flag == 1)
            break;
        max_sum = get_max_sum(a, L);
        printf("%d\n", max_sum);
    }
    return 0;
}
