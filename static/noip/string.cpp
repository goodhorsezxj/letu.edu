#include <stdio.h>

int strlen(char* s)
{
    int i;
    for (i = 0; s[i] != 0; i++);
    return i;
}

int strcmp(char* s1, char* s2)
{
    for (int i = 0; s1[i] != 0 || s2[i] != 0; i++) {
        if (s1[i] != s2[i])
            return s1[i] - s2[i];
    }
    return 0;
}

void strcat(char* s1, char* s2, char* s3)
{
    int L = 0;
    for (int i = 0; s1[i] != 0; i++)
        s3[L++] = s1[i];
    for (int i = 0; s2[i] != 0; i++)
        s3[L++] = s2[i];
    s3[L] = 0;
}

int main()
{
    freopen("string.in", "r", stdin);
    freopen("string.out", "w", stdout);
    char s1[102], s2[102];
    char s3[202];
    while(scanf("%s%s", s1, s2) != EOF) {
        int len1 = strlen(s1);
        int len2 = strlen(s2);
        int tmp = strcmp(s1, s2);
        char cmp_res;
        if (tmp < 0)
            cmp_res = '<';
        else if (tmp == 0)
            cmp_res = '=';
        else
            cmp_res = '>';
        strcat(s1, s2, s3);
        printf("%d\n", len1);
        printf("%d\n", len2);
        printf("%c\n", cmp_res);
        printf("%s\n", s3);
        printf("\n");
    }
    return 0;
}
