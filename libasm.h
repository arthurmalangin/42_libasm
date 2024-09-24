#ifndef	LIBASM_H
# define LIBASM_H

#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

ssize_t		ft_strlen(char *);
char        *ft_strcpy(char *restrict dst, const char *restrict src);

#endif