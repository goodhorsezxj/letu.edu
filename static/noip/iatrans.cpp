#include <stdio.h>
#include <string.h>

int str2int(char* s)
{
    int n = 0;
    for (int i = 0; s[i] != 0; i++) {
        n = n * 10 + (s[i] - '0');
    }
    return n;
}

void int2str(int n, char* s)
{
    int L = 0;
    if (n == 0) {
        strcpy(s, "0");
        return;
    }
    while (n > 0) {
        s[L++] = n % 10 + '0';
        n /= 10;
    }
    s[L] = '\0';
    for (int i = 0; i < L-1-i; i++) {
        char tmp = s[i];
        s[i] = s[L-1-i];
        s[L-1-i] = tmp;
    }
}

void string_add(char* a, char* b, char* sum)
{
    int n1 = str2int(a);
    int n2 = str2int(b);
    int n3 = n1 + n2;
    int2str(n3, sum);
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
