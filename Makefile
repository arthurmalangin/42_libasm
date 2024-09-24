NAME = libasm

NAME_LIB = libasm.a

SRCS =	ft_strlen.s \
		ft_strcpy.s \

CC = cc

CFLAGS = -g

NASM = nasm

NASMFLAGS = -f elf64 -g

OBJ = $(SRCS:.s=.o)

%.o : %.s
	$(NASM) $(NASMFLAGS) $< -o $@

all : $(NAME)

$(NAME) : $(OBJ)
	ar rcs $(NAME_LIB) $(OBJ)

ccproject :
	$(CC) $(CFLAGS) main.c $(NAME_LIB)
	
clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME_LIB)
	rm -f ./a.out

re : fclean all