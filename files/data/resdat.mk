DATA_RESDAT_DIR = files/data/resdat
DATA_RESDAT_NARC = $(DATA_RESDAT_DIR).narc

# temp
DATA_RESDAT_BIN = $(wildcard $(DATA_RESDAT_DIR)/*.bin)

$(DATA_RESDAT_NARC): $(DATA_RESDAT_BIN)
	$(KNARC) -d $(DATA_RESDAT_DIR) -p $@ -i
