all: build

.PHONY: build
build:
	@npm install --registry=https://registry.npm.taobao.org
	@npm run build
	@make dist

.PHONY: dist
dist:
	@cd dist && npm install
	@echo "现在请使用 微信开发者工具 打开dist目录"
	@echo "在 微信开发者工具 内点击 工具 -> 构建 npm"


.PHONY: clean
clean:
	@rm -rf node_modules
	@echo "clean [ ok ]"