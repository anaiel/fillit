# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dtrigalo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/28 09:14:19 by dtrigalo          #+#    #+#              #
#    Updated: 2018/12/20 09:25:36 by anleclab         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit
FLAGS = -Wall -Werror -Wextra
SRCS = check_legal_test_file.c \
	   open_read.c \
	   get_tet.c \
	   solver.c \
	   print_map.c \
	   uproundsqrt.c \
	   main.c
OBJ = $(SRCS:.c=.o)
HEADERS = fillit.h
GREEN = 

all: $(NAME)
	@echo "\033[0;32mfillit executable was created successfully"

%.o: %.c
	@gcc -g -o $@ -c $< $(CFLAGS)

$(NAME): $(OBJ)
	@make -C ./libft
	@gcc $(OBJ) -o $(NAME) -Llibft -lft -I$(HEADERS)

clean:
	@/bin/rm -f $(OBJ)
	@make -C ./libft clean

fclean: clean
	@/bin/rm -f $(NAME)
	@make -C ./libft fclean

re: fclean all

.PHONY: all clean fclean re