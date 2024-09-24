#include "libasm.h"

int main(int argc, char **argv)
{
    printf("===============\n");
    ssize_t tmp = ft_strlen(argv[1]);
    printf("%zd for %s\n", tmp, argv[1]);
    printf("===============\n");
    char tableau[50];
    printf("ft_strcpy(%s, tableau) = %s\n", argv[1], ft_strcpy(argv[1], tableau));
    printf("tableau = %s\n", tableau);
    printf("===============\n");
}