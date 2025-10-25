.PHONY: pub clean models cubit

BUILD_RUNNER := flutter pub run build_runner

# Override for default "all" target to prevent any target from beign
# launched simply by using the "make" command
all:

# Target to intall packages
pub:
	flutter pub get

# Target to clean a project
clean:
	rm -f pubspec.lock
	flutter clean

# Target to generate models
models:
	$(BUILD_RUNNER) build -d

cubit:
	mason make cubit --name $(name) --on-conflict overwrite
