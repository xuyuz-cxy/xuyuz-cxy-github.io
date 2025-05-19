# +-----+---------------------------------------------------------------+
# | 作者 | xuyuzhi                                                       |
# | 日期 | 2025-04-23 15:38:05 星期三                                     |
# | 网站 | https://xuyuzhi.com                                           |
# | 版权 | Copyright © 2024-2025 xuyuzhi                                 |
# | 软件 | Jetbrains GoLand                                              |
# | 项目 | websites                                                      |
# | 文件 | Makefile                                                      |
# +-----+---------------------------------------------------------------+

# default
.DEFAULT_GOAL = default

default: cxy
	@echo -e "\e[42munzip success ~\033[0m"

cxy: _unzip_webHelpNAV2-all.zip se java go testing

.PHONY: _unzip_webHelpNAV2-all.zip
_unzip_webHelpNAV2-all.zip:
	rm -rf resources api-object-digest.json config.json current.help.version HelpTOC.json index.html llms.txt Map.jhm nav.html sitemap.xml starting-page-nav.json
	unzip -q webHelpNAV2-all.zip
.PHONY: se
se:
	cd se; \
	ls | grep -v .zip | xargs rm -rf; \
	ls | grep .zip | xargs unzip -q

.PHONY: java
java:
	cd java; \
	ls | grep -v .zip | xargs rm -rf; \
	ls | grep .zip | xargs unzip -q

.PHONY: go
go:
	cd go; \
	ls | grep -v .zip | xargs rm -rf; \
	ls | grep .zip | xargs unzip -q

.PHONY: testing
testing:
	cd testing; \
	ls | grep -v .zip | xargs rm -rf; \
	ls | grep .zip | xargs unzip -q

