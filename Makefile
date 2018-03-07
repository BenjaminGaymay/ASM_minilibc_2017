##
## EPITECH PROJECT, 2018
## asm
## File description:
## makefile
##

NAME	= libasm.so

ASM	= nasm -f elf64

LD	= ld -shared

RM	= rm -f

SRCS	= ./srcs/strlen.asm	\
	  ./srcs/strcmp.asm	\
	  ./srcs/strncmp.asm	\
	  ./srcs/strchr.asm	\
	  ./srcs/rindex.asm	\
	  ./srcs/memset.asm	\
	  ./srcs/memcpy.asm	\
	  ./srcs/memmove.asm	\
	  ./srcs/strcasecmp.asm	\
	  ./srcs/strcspn.asm	\
	  ./srcs/strpbrk.asm

OBJS	= $(SRCS:.asm=.o)

all: $(NAME)

%.o: %.asm
	$(ASM) $< -o $@

$(NAME): $(OBJS)
	$(LD) $(OBJS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
