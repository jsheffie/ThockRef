APP_NAME    = ThockRef
BUILD_DIR   = .build/release
APP_BUNDLE  = $(APP_NAME).app
APP_CONTENTS = $(APP_BUNDLE)/Contents
INSTALL_PATH = /Applications/$(APP_BUNDLE)
VERSION     := $(shell cat VERSION)
ARCHIVE      = thockref-$(VERSION).zip
STAGE        = thockref-$(VERSION)

.PHONY: build app install run uninstall clean archive seed

build:
	swift build -c release

app: build
	mkdir -p $(APP_CONTENTS)/MacOS
	mkdir -p $(APP_CONTENTS)/Resources
	cp $(BUILD_DIR)/$(APP_NAME) $(APP_CONTENTS)/MacOS/
	cp Sources/ThockRef/Resources/Info.plist $(APP_CONTENTS)/

install: app
	mkdir -p $(INSTALL_PATH)/Contents/MacOS
	mkdir -p $(INSTALL_PATH)/Contents/Resources
	cp $(APP_CONTENTS)/MacOS/$(APP_NAME) $(INSTALL_PATH)/Contents/MacOS/
	cp $(APP_CONTENTS)/Info.plist $(INSTALL_PATH)/Contents/
	codesign --force --deep --sign - $(INSTALL_PATH)
	@echo "Installed to $(INSTALL_PATH)"

run: install
	open $(INSTALL_PATH)

uninstall:
	-killall $(APP_NAME) 2>/dev/null
	rm -rf $(INSTALL_PATH)
	@echo "Removed $(INSTALL_PATH)"

seed:
	mkdir -p ~/.config/thockref
	@for f in example_keyboard_shortcuts/*.md; do \
		dest=~/.config/thockref/$$(basename $$f); \
		if [ ! -f "$$dest" ]; then \
			cp "$$f" "$$dest"; \
			echo "Seeded $$dest"; \
		else \
			echo "Skipped $$dest (already exists)"; \
		fi \
	done

archive: app
	rm -rf $(STAGE) $(ARCHIVE)
	mkdir -p $(STAGE)
	cp -R $(APP_BUNDLE) $(STAGE)/
	codesign --force --deep --sign - $(STAGE)/$(APP_BUNDLE)
	zip -r --symlinks $(ARCHIVE) $(STAGE)
	rm -rf $(STAGE)
	@echo ""
	@echo "Artifact: $(ARCHIVE)"
	@echo "SHA-256:  $$(shasum -a 256 $(ARCHIVE) | awk '{print $$1}')"
	@echo ""
	@echo "Next: create a GitHub release at v$(VERSION)"
	@echo "  1. Attach $(ARCHIVE)"
	@echo "  2. Copy the SHA-256 above into Formula/thockref.rb in homebrew-tap"

clean:
	rm -rf .build $(APP_BUNDLE)
