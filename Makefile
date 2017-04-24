root_path = $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
src_dir = $(root_path)/src
build_dir = build

src = $(wildcard $(src_dir)/*)
target = $(patsubst $(src_dir)%, $(build_dir)%, $(src))

optimize_script = $(root_path)/tools/optimizing.sh

all: $(target)

$(build_dir)/%.svg: $(src_dir)/%.svg
	test -d $(build_dir) || mkdir -p $(build_dir)
	$(optimize_script) $< $@

$(build_dir)/%: $(src_dir)/%
	test -d $(build_dir) || mkdir -p $(build_dir)
	cp $< $@
