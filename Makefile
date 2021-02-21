.PHONY: init
init:
	./scripts/init.sh

.PHONY: check
check:
	SKIP_WASM_BUILD=1 cargo check

.PHONY: test
test:
	SKIP_WASM_BUILD=1 cargo test --all

.PHONY: run
run:
	cargo run -- --dev --tmp

.PHONY: build
build:
	cargo build --release

.PHONY: watch
watch:
	SKIP_WASM_BUILD=1 cargo watch -c -x build

.PHONY: doc
doc:
	SKIP_WASM_BUILD=1 cargo doc --open
