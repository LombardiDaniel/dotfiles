// Daniel Lombardi - RA: 738340
//      g++ -Wall -pedantic -O2 -Wno-unused-result -g main.cpp -o main.out -std=c++11

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>


#define TAM_NOME                                        1<<10
#define DEBUG                                               0


void log(const char* message ...);
void log(const char* message);


int main(int argc, char const *argv[]) {

    // scanf em C mesmo pq eh mais facil
    // char cFileName[TAM_NOME] = {0};
    // scanf("%s", cFileName);

    char fileName[TAM_NOME];
    scanf("%s", fileName);

    FILE *fp = fopen(fileName, "r");

    if (fp != NULL) {

        long long unsigned numMoedas;
        fscanf(fp, "%llu", &numMoedas);
        log("numMoedas: %lld\n", numMoedas);

        int *pesos = new int[numMoedas];
        for (size_t i = 0; i < numMoedas; i++)
            fscanf(fp, "%d", &pesos[i]);

    } else {
        printf("\033[1;31m");
        printf("FILE NOT FOUND\n");
        printf("\033[0m\n");
    }

    fclose(fp);

    return 0;
}


void log(const char *message, ...) {
    va_list ap;
    int res = 0;

    if (DEBUG) {
        va_start(ap, message);
        res = vprintf(message, ap);
        va_end(ap);
    }
}

void log(const char* message) {
    if (DEBUG)
        printf("%s", message);
}
