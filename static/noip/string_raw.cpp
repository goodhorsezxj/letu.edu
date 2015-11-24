#include <stdio.h>

int strlen(char* s)
{
}

int strcmp(char* s1, char* s2)
{
}

void strcat(char* s1, char* s2, char* s3)
{
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
            cmd_res = '<';
        else if (tmp == 0)
            cmd_res = '=';
        else
            cmd_res = '>';
        strcat(s1, s2, s3);
        printf("%d\n", len1);
        printf("%d\n", len2);
        printf("%c\n", cmp_res);
        printf("%s\n", s3);
        printf("\n");
    }
    return 0;
}
