NAME = libftprintf.a

SRCS = ft_printf.c ft_printf_char.c\
		ft_printf_str.c ft_printf_hex.c\
		ft_printf_int.c ft_printf_nb.c
OBJS = ${SRCS:.c=.o}

CC = cc

RM = rm -f

ARS = ar rc

CFLAGS = -Wall -Werror -Wextra

all:	$(NAME)

$(NAME):
	${CC} -c ${CFLAGS} ${SRCS}
	${ARS} ${NAME} ${OBJS}
clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all, clean, fclean, re
