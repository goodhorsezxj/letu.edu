#include <stdio.h>
#include <string.h>

void string_add(char* a, char* b, char* sum)
{
}

int main()
{
    freopen("iatrans.in", "r", stdin);
    freopen("iatrans.out", "w", stdout);
    char s1[11], s2[11], s3[11];
    while(scanf("%s%s", s1, s2) != EOF) {
        string_add(s1, s2, s3);
        printf("%s\n", s3);
    }
    return 0;
}
