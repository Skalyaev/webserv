NAME=webserv

CC=c++
CFLAGS=-Wall -Wextra -Werror -std=c++98

INCLUDE_DIR=include
HEADER_EXT=hpp
HEADER=$(shell find $(INCLUDE_DIR) -type f -name "*.$(HEADER_EXT)")

SRC_EXT=cpp
SRC_DIR=src
SRC=$(shell find $(SRC_DIR) -type f -name "*.$(SRC_EXT)")

OBJ_DIR=obj
OBJ_SUBDIR=$(shell find $(SRC_DIR) -type d | grep '/' | sed 's/$(SRC_DIR)/$(OBJ_DIR)/g')
OBJ=$(subst $(SRC_DIR),$(OBJ_DIR),$(SRC:.$(SRC_EXT)=.o))

RM=rm -rf

all: ${NAME}

${NAME}: $(OBJ_DIR) $(OBJ_SUBDIR) ${OBJ}
	${CC} ${CFLAGS} ${OBJ} -o ${NAME}

$(OBJ_DIR):
	@mkdir $(OBJ_DIR)

$(OBJ_SUBDIR):
	@mkdir $(OBJ_SUBDIR)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.$(SRC_EXT) ${HEADER}
	$(CC) $(CFLAGS) -c $< -o $(<:.$(SRC_EXT)=.o)
	@mv $(SRC_DIR)/*/*.o $@

clean:
	${RM} ${OBJ_DIR}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
