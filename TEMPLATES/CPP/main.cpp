// Daniel Lombardi - RA: 738340
//      g++ -Wall -pedantic -O2 -Wno-unused-result -g main.cpp -o main.out -std=c++11

#include <stdio.h>
#include <stdlib.h>

#include <iostream>
#include <vector>


#define TAM_NOME                                        1<<10
#define DEBUG                                               0

#define RED                                      "\033[1;31m"
#define WHITE                                       "\033[0m"


template<typename... Args>
void log(const char* message, Args... args);
void log(const char* message);


int main(int argc, char const *argv[]) {

    // scanf em C mesmo pq eh mais facil
    // char cFileName[TAM_NOME] = {0};
    // scanf("%s", cFileName);

    std::string fileName;
    std::cin.ignore();
    getline(std::cin, fileName);

    FILE *fp = fopen(fileName.c_str(), "r");

    if (fp != NULL) {
        long long unsigned numMoedas;
        fscanf(fp, "%llu", &numMoedas);
        log("numMoedas: %lld\n", numMoedas);

        int *pesos = new int[numMoedas];
        for (size_t i = 0; i < numMoedas; i++)
            fscanf(fp, "%d", &pesos[i]);
    } else {
        printf(RED);
        printf("FILE NOT FOUND\n");
        printf(WHITE);
    }

    fclose(fp);

    return 0;
}


template<typename... Args>
void log(const char* message, Args... args) {
    if (DEBUG)
        printf(message, args...);
}

void log(const char* message) {
    if (DEBUG)
        printf("%s", message);
}
