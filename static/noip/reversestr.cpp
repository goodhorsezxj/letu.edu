#include <stdio.h>
#include <string.h>
void reverse(char* s)
{
    char tmp;
    int L = strlen(s);
    for (int i=0; i < L-1-i; i++) {
        tmp = s[i];
        s[i] = s[L-1-i];
        s[L-1-i] = tmp;
    }
}

int main()
{
    freopen("reversestr.in", "r", stdin);
    freopen("reversestr.out", "w", stdout);
    char s[102];
    while(scanf("%s", s) != EOF) {
        reverse(s);
        printf("%s\n", s);
    }
    return 0;
}
