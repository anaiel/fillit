/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fillit.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dtrigalo <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/28 12:53:53 by dtrigalo          #+#    #+#             */
/*   Updated: 2018/11/28 16:26:06 by dtrigalo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FILLIT_H
# define FILLIT_H

# define BUFF_SIZE 777

typedef struct	s_point
{
	int		x;
	int		y;
}				t_point;

int				check_legal_test_file(char *str, int tet_nbr);
int				ft_open_file(char *file);
int				uproundsqrt(int nb);
char			*ft_read_file(int fd);
char			**solver(int nbttmns, t_point **ttmns);
void			print_map(char **map);
t_point			**get_tet(char *tet, int tet_nbr);

#endif
