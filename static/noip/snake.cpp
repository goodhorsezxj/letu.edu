#include <stdio.h>
#include <memory.h>
int dx[4] = {1, 0, -1, 0};
int dy[4] = {0, 1, 0, -1};
int main()
{
    freopen("snake.in", "r", stdin);
    freopen("snake.out", "w", stdout);
    int N;
    int a[11][11];
    int d;
    int x, y;
    int n;
    while(1) {
        if(scanf("%d", &N) == EOF)
            break;
        d = 0;
        x = y = 0;
        n = 1;
        memset(a, 0, sizeof(a));
        while(1) {
            a[x][y] = n;
            n++;
            if (n > N*N)
                break;
            x += dx[d];
            y += dy[d];
            if (x < 0 || x >= N || y < 0 || y >= N || a[x][y] != 0) {
                x -= dx[d];
                y -= dy[d];
                d = (d + 1) % 4;
                x += dx[d];
                y += dy[d];
            }
        }
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++)
                printf("%3d", a[i][j]);
            printf("\n");
        }
        printf("\n");
    }
    return 0;
}
