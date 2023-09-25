NONE = '\033[0m'
GREEN = '\033[0;32m'
GRAY = '\033[2;37m'
ITALIC = '\033[3m'

SRC_DIR := src
OUT_DIR := out

JAVAC := javac
JFLAGS := -d $(OUT_DIR)

SRCS := $(wildcard $(SRC_DIR)/*.java)

CLASSES := $(SRCS:$(SRC_DIR)/%.java=$(OUT_DIR)/%.class)

all: $(OUT_DIR) $(CLASSES)
	@echo -e $(GREEN) $(ITALIC) "Compiled ..." $(NONE)

$(OUT_DIR):
	@mkdir -p $(OUT_DIR)

$(OUT_DIR)/%.class: $(SRC_DIR)/%.java
	@echo -e $(GRAY) $(ITALIC) "Making .. $< " $(NONE)
	@$(JAVAC) $(JFLAGS) $<

clean:
	@rm -rf $(OUT_DIR)
	@echo -e $(GREEN) $(ITALIC) "Cleaned ..." $(NONE)

.PHONY: all clean
