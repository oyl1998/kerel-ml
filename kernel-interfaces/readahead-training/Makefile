#KML_KERNEL_VERSION = $(shell uname -r)
KML_KERNEL_VERSION = 4.19.51
KBUILD_CFLAGS += -I$(PWD)/../../include

obj-m += readahead_online.o

readahead_online-y += \
	../../src/kml_kernel.o \
	../../src/optimizers/sgd_optimizer.o \
	../../src/models/model.o \
	../../src/models/xor_net.o \
	../../src/models/linear_regression.o \
	../../src/math/linear_algebra.o \
	../../src/math/matrix.o \
	../../src/math/math.o \
	../../src/lib/kml_lib.o \
	../../src/lib/kml_memory_allocator.o \
	../../src/autodiff/autodiff.o \
	../../src/utility/utility.o \
	../../src/layers/layers.o \
	../../src/layers/linear.o \
	../../src/layers/sigmoid.o \
	../../src/functions/cross_entropy_loss.o \
	../../src/functions/square_loss.o \
	../../src/functions/binary_cross_entropy_loss.o \
	../../src/functions/loss.o \
	../../kernel-interfaces/io_scheduler_linear.o

all:
	make -C /lib/modules/$(KML_KERNEL_VERSION)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(KML_KERNEL_VERSION)/build M=$(PWD) clean

CFLAGS_readahead.o := -DKML_KERNEL
CFLAGS_readahead.o += -DDEVICE_NAME=\"/dev/sda2\"
CFLAGS_readahead.o += -DKML_NN_MODEL_DIR=\"/kernel-ml/ml-models-analyses/readahead-per-disk/online_nn_arch_data/\"
CFLAGS_REMOVE_readahead.o += -mno-sse2
CFLAGS_REMOVE_readahead.o += -mno-sse
CFLAGS_REMOVE_readahead.o += -mno-mmx

CFLAGS_readahead_net_classification.o := -DKML_KERNEL
CFLAGS_REMOVE_readahead_net_classification.o += -mno-sse2
CFLAGS_REMOVE_readahead_net_classification.o += -mno-sse
CFLAGS_REMOVE_readahead_net_classification.o += -mno-mmx

CFLAGS_readahead_net_data.o := -DKML_KERNEL
CFLAGS_REMOVE_readahead_net_data.o += -mno-sse2
CFLAGS_REMOVE_readahead_net_data.o += -mno-sse
CFLAGS_REMOVE_readahead_net_data.o += -mno-mmx

CFLAGS_kml_kernel.o := -DKML_KERNEL
CFLAGS_REMOVE_kml_kernel.o += -mno-sse2
CFLAGS_REMOVE_kml_kernel.o += -mno-sse
CFLAGS_REMOVE_kml_kernel.o += -mno-mmx
CFLAGS_sgd_optimizer.o := -DKML_KERNEL
CFLAGS_REMOVE_sgd_optimizer.o += -mno-sse2
CFLAGS_REMOVE_sgd_optimizer.o += -mno-sse
CFLAGS_REMOVE_sgd_optimizer.o += -mno-mmx
CFLAGS_model.o := -DKML_KERNEL
CFLAGS_REMOVE_model.o += -mno-sse2
CFLAGS_REMOVE_model.o += -mno-sse
CFLAGS_REMOVE_model.o += -mno-mmx
CFLAGS_xor_net.o := -DKML_KERNEL
CFLAGS_REMOVE_xor_net.o += -mno-sse2
CFLAGS_REMOVE_xor_net.o += -mno-sse
CFLAGS_REMOVE_xor_net.o += -mno-mmx
CFLAGS_linear_regression.o := -DKML_KERNEL
CFLAGS_REMOVE_linear_regression.o += -mno-sse2
CFLAGS_REMOVE_linear_regression.o += -mno-sse
CFLAGS_REMOVE_linear_regression.o += -mno-mmx
CFLAGS_linear_algebra.o := -DKML_KERNEL
CFLAGS_REMOVE_linear_algebra.o += -mno-sse2
CFLAGS_REMOVE_linear_algebra.o += -mno-sse
CFLAGS_REMOVE_linear_algebra.o += -mno-mmx
CFLAGS_matrix.o := -DKML_KERNEL
CFLAGS_REMOVE_matrix.o += -mno-sse2
CFLAGS_REMOVE_matrix.o += -mno-sse
CFLAGS_REMOVE_matrix.o += -mno-mmx
CFLAGS_math.o := -DKML_KERNEL
CFLAGS_REMOVE_math.o += -mno-sse2
CFLAGS_REMOVE_math.o += -mno-sse
CFLAGS_REMOVE_math.o += -mno-mmx
CFLAGS_kml_lib.o := -DKML_KERNEL
CFLAGS_REMOVE_kml_lib.o += -mno-sse2
CFLAGS_REMOVE_kml_lib.o += -mno-sse
CFLAGS_REMOVE_kml_lib.o += -mno-mmx
CFLAGS_kml_memory_allocator.o := -DKML_KERNEL
CFLAGS_REMOVE_kml_memory_allocator.o += -mno-sse2
CFLAGS_REMOVE_kml_memory_allocator.o += -mno-sse
CFLAGS_REMOVE_kml_memory_allocator.o += -mno-mmx
CFLAGS_autodiff.o := -DKML_KERNEL
CFLAGS_REMOVE_autodiff.o += -mno-sse2
CFLAGS_REMOVE_autodiff.o += -mno-sse
CFLAGS_REMOVE_autodiff.o += -mno-mmx
CFLAGS_utility.o := -DKML_KERNEL
CFLAGS_REMOVE_utility.o += -mno-sse2
CFLAGS_REMOVE_utility.o += -mno-sse
CFLAGS_REMOVE_utility.o += -mno-mmx
CFLAGS_layers.o := -DKML_KERNEL
CFLAGS_REMOVE_layers.o += -mno-sse2
CFLAGS_REMOVE_layers.o += -mno-sse
CFLAGS_REMOVE_layers.o += -mno-mmx
CFLAGS_linear.o := -DKML_KERNEL
CFLAGS_REMOVE_linear.o += -mno-sse2
CFLAGS_REMOVE_linear.o += -mno-sse
CFLAGS_REMOVE_linear.o += -mno-mmx
CFLAGS_sigmoid.o := -DKML_KERNEL
CFLAGS_REMOVE_sigmoid.o += -mno-sse2
CFLAGS_REMOVE_sigmoid.o += -mno-sse
CFLAGS_REMOVE_sigmoid.o += -mno-mmx
CFLAGS_cross_entropy_loss.o := -DKML_KERNEL
CFLAGS_REMOVE_cross_entropy_loss.o += -mno-sse2
CFLAGS_REMOVE_cross_entropy_loss.o += -mno-sse
CFLAGS_REMOVE_cross_entropy_loss.o += -mno-mmx
CFLAGS_square_loss.o := -DKML_KERNEL
CFLAGS_REMOVE_square_loss.o += -mno-sse2
CFLAGS_REMOVE_square_loss.o += -mno-sse
CFLAGS_REMOVE_square_loss.o += -mno-mmx
CFLAGS_binary_cross_entropy_loss.o := -DKML_KERNEL
CFLAGS_REMOVE_binary_cross_entropy_loss.o += -mno-sse2
CFLAGS_REMOVE_binary_cross_entropy_loss.o += -mno-sse
CFLAGS_REMOVE_binary_cross_entropy_loss.o += -mno-mmx
CFLAGS_loss.o := -DKML_KERNEL
CFLAGS_REMOVE_loss.o += -mno-sse2
CFLAGS_REMOVE_loss.o += -mno-sse
CFLAGS_REMOVE_loss.o += -mno-mmx
CFLAGS_io_scheduler_linear.o := -DKML_KERNEL
CFLAGS_REMOVE_io_scheduler_linear.o += -mno-sse2
CFLAGS_REMOVE_io_scheduler_linear.o += -mno-sse
CFLAGS_REMOVE_io_scheduler_linear.o += -mno-mmx
