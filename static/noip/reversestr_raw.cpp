#include <stdio.h>
#include <string.h>
void reverse(char* s)
{
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
