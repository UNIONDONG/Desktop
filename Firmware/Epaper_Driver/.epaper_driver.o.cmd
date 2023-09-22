cmd_/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/epaper_driver.o := arm-none-eabi-gcc -Wp,-MD,/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/.epaper_driver.o.d -nostdinc -isystem /home/donge/WorkSpace/tools/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar/gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/include -I/home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include -I./arch/arm/include/generated  -I/home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include -I./include -I/home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi -I./include/generated/uapi -include /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kconfig.h -include /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/compiler_types.h  -I/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver -I/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -DCC_HAVE_ASM_GOTO -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 -Wframe-larger-than=1024 -fstack-protector-strong -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/= -Wno-packed-not-aligned -std=gnu99 -fno-pic  -DMODULE  -DKBUILD_BASENAME='"epaper_driver"' -DKBUILD_MODNAME='"epaper_driver"' -c -o /home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/.tmp_epaper_driver.o /home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/epaper_driver.c

source_/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/epaper_driver.o := /home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/epaper_driver.c

deps_/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/epaper_driver.o := \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/srcu.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/ioport.h \
    $(wildcard include/config/memory/hotremove.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/compiler_types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/int-ll64.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/bitsperlong.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/posix_types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/stddef.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/stddef.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/posix_types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/posix_types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/spectre.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/barrier.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kasan-checks.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/const.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/const.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /home/donge/WorkSpace/tools/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar/gcc-arm-none-eabi-10.3-2021.10/lib/gcc/arm-none-eabi/10.3.1/include/stdarg.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/linkage.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/stringify.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/export.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/linkage.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/bitops.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/bits.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/bitops.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/typecheck.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/hwcap.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/hwcap.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/irqflags.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/non-atomic.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/builtin-__fls.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/builtin-__ffs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/builtin-fls.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/builtin-ffs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/ffz.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/fls64.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/sched.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/hweight.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/arch_hweight.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/const_hweight.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/lock.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/arm/lpae.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/prefetch.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/binfmt/elf/fdpic.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/hw_breakpoint.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/unified.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/cmpxchg-local.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/atomic-long.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/le.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/byteorder.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/byteorder/little_endian.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/byteorder/little_endian.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/swab.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/swab.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/swab.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/swab.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/byteorder/generic.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kern_levels.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/kernel.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/sysinfo.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/dynamic_debug.h \
    $(wildcard include/config/jump/label.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/build_bug.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/div64.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/compiler.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/div64.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sysfs.h \
    $(wildcard include/config/debug/lock/alloc.h) \
    $(wildcard include/config/sysfs.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/err.h \
  arch/arm/include/generated/uapi/asm/errno.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/errno.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/errno-base.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  arch/arm/include/generated/asm/current.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/current.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/restart_block.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/time64.h \
    $(wildcard include/config/64bit/time.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/time.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/glue.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/pgtable-2level-types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/phys/addr.h) \
    $(wildcard include/config/debug/virtual.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sizes.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pfn.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/getorder.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/spinlock_types.h \
    $(wildcard include/config/debug/spinlock.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/spinlock_types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rwlock_types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/osq_lock.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/idr.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/radix-tree.h \
    $(wildcard include/config/base/small.h) \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/trace/preempt/toggle.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/preempt.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/bottom_half.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/bitmap.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/string.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/string.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rcutree.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/spinlock.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/spinlock.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rwlock.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
    $(wildcard include/config/generic/lockbreak.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/wait.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/wait.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/seqlock.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/nodemask.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/page-flags-layout.h \
    $(wildcard include/config/numa/balancing.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/generated/bounds.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/notifier.h \
    $(wildcard include/config/tree/srcu.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/errno.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/errno.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  arch/arm/include/generated/asm/rwsem.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/rwsem.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/ktime.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/time32.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/jiffies.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/timex.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/timex.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/param.h \
  arch/arm/include/generated/uapi/asm/param.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/param.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/timex.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/generated/timeconst.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/timekeeping.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/timekeeping32.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rcu_segcblist.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/srcutree.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rcu_node_tree.h \
    $(wildcard include/config/rcu/fanout.h) \
    $(wildcard include/config/rcu/fanout/leaf.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/completion.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/smp.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/percpu.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/percpu.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/virtualization.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/arch_topology.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/topology.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rbtree.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/highuid.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kobject_ns.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/stat.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/stat.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/stat.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kref.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/refcount.h \
    $(wildcard include/config/refcount/full.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/klist.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/ratelimit.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sched.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/memcg/kmem.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/stackprotector.h) \
    $(wildcard include/config/arch/has/scaled/cputime.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/posix/timers.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/intel/rdt.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/rseq.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/arch/task/struct/on/stack.h) \
    $(wildcard include/config/debug/rseq.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/sched.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pid.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rculist.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sem.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/sem.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/ipc.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rhashtable-types.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/ipc.h \
  arch/arm/include/generated/uapi/asm/ipcbuf.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/uapi/asm/sembuf.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/sembuf.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/shm.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/shm.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/hugetlb_encode.h \
  arch/arm/include/generated/uapi/asm/shmbuf.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/shmbuf.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/shmparam.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kcov.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/kcov.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/timerqueue.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/seccomp.h \
  arch/arm/include/generated/asm/seccomp.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/seccomp.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/unistd.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/oabi/compat.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/unistd.h \
  arch/arm/include/generated/uapi/asm/unistd-eabi.h \
  arch/arm/include/generated/uapi/asm/unistd-common.h \
  arch/arm/include/generated/asm/unistd-nr.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/resource.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/resource.h \
  arch/arm/include/generated/uapi/asm/resource.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/resource.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/resource.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/latencytop.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sched/prio.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/signal_types.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/signal.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/signal.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/signal.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/signal-defs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/uapi/asm/siginfo.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/siginfo.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/mm_types_task.h \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/rseq.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/overflow.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/arch/omap.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pm_wakeup.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/migration.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/wait_bit.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kdev_t.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/kdev_t.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/dcache.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rculist_bl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/list_bl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/bit_spinlock.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/path.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/list_lru.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/shrinker.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/xarray.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/mm_types.h \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/hmm.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/auxvec.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/auxvec.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/auxvec.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/auxvec.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/uprobes.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
    $(wildcard include/config/vdso.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/capability.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/capability.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/semaphore.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/fcntl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/fcntl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/uapi/asm/fcntl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/fcntl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/fiemap.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/migrate_mode.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/percpu-rwsem.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rcuwait.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rcu_sync.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/delayed_call.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/uuid.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/uuid.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/errseq.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/ioprio.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sched/rt.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/iocontext.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/fs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/limits.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/uapi/asm/ioctl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/ioctl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/asm-generic/ioctl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/percpu_counter.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/dqblk_xfs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/dqblk_v1.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/dqblk_v2.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/dqblk_qtree.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/projid.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/quota.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/nfs_fs_i.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/module.h \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/function/error/injection.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kmod.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/umh.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/sysctl.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/elf.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/elf.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/vdso_datapage.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/user.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/elf.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/elf-em.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/jump_label.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/rbtree_latch.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/error-injection.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/error-injection.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/tracepoint-defs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/static_key.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
    $(wildcard include/config/arm/module/plts.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/spi/spi.h \
    $(wildcard include/config/spi/slave.h) \
    $(wildcard include/config/spi.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/mod_devicetable.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kasan.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kthread.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/cgroup.h \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/sock/cgroup/data.h) \
    $(wildcard include/config/cgroup/net/prio.h) \
    $(wildcard include/config/cgroup/net/classid.h) \
    $(wildcard include/config/cgroup/data.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/cgroupstats.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/taskstats.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/seq_file.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/keys.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/key.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sched/user.h \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/net.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/ns_common.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/nsproxy.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/user_namespace.h \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/persistent/keyrings.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/kernel_stat.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/irq/timings.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irqreturn.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irqnr.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/irqnr.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/hardirq.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
    $(wildcard include/config/hwlat/tracer.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/hardirq.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irq_cpustat.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/sections.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/sections.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/cgroup-defs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/percpu-refcount.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/u64_stats_sync.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/bpf-cgroup.h \
    $(wildcard include/config/cgroup/bpf.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/bpf.h \
    $(wildcard include/config/efficient/unaligned/access.h) \
    $(wildcard include/config/ip/route/classid.h) \
    $(wildcard include/config/bpf/kprobe/override.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/bpf/lirc/mode2.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/uapi/linux/bpf_common.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cgroup/hugetlb.h) \
    $(wildcard include/config/cgroup/pids.h) \
    $(wildcard include/config/cgroup/rdma.h) \
    $(wildcard include/config/cgroup/debug.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/sgl/alloc.h) \
    $(wildcard include/config/arch/has/sg/chain.h) \
    $(wildcard include/config/sg/pool.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/mm.h \
    $(wildcard include/config/have/arch/mmap/rnd/bits.h) \
    $(wildcard include/config/have/arch/mmap/rnd/compat/bits.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/arch/uses/high/vma/flags.h) \
    $(wildcard include/config/arch/has/pkeys.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/sparc64.h) \
    $(wildcard include/config/x86/intel/mpx.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/dev/pagemap/ops.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/have/memblock.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/range.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/page_ext.h \
    $(wildcard include/config/idle/page/tracking.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/user/stacktrace/support.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/stackdepot.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/page_ref.h \
    $(wildcard include/config/debug/page/ref.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/memremap.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/proc-fns.h \
    $(wildcard include/config/big/little.h) \
    $(wildcard include/config/harden/branch/predictor.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/pj4b.h) \
    $(wildcard include/config/cpu/v7.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/pgtable-nopud.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/pgtable-nop4d-hack.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/5level-fixup.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/pgtable-hwdef.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/smp/on/up.h) \
    $(wildcard include/config/cpu/tlb/v4wt.h) \
    $(wildcard include/config/cpu/tlb/fa.h) \
    $(wildcard include/config/cpu/tlb/v4wbi.h) \
    $(wildcard include/config/cpu/tlb/feroceon.h) \
    $(wildcard include/config/cpu/tlb/v4wb.h) \
    $(wildcard include/config/cpu/tlb/v6.h) \
    $(wildcard include/config/cpu/tlb/v7.h) \
    $(wildcard include/config/arm/errata/720789.h) \
    $(wildcard include/config/arm/errata/798181.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/pgtable-2level.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/pgtable.h \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/have/arch/transparent/hugepage/pud.h) \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/enable/thp/migration.h) \
    $(wildcard include/config/have/arch/huge/vmap.h) \
    $(wildcard include/config/x86/espfix64.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/huge_mm.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/sched/coredump.h \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/io.h \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/xen/xen.h \
    $(wildcard include/config/xen/pvh.h) \
    $(wildcard include/config/xen/dom0.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/logic_pio.h \
    $(wildcard include/config/indirect/pio.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/fwnode.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/vmalloc.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/of.h \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/promtree.h) \
    $(wildcard include/config/of/kobj.h) \
    $(wildcard include/config/of/numa.h) \
    $(wildcard include/config/of/overlay.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/property.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/of_gpio.h \
    $(wildcard include/config/of/gpio.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/gpio.h \
    $(wildcard include/config/gpiolib.h) \
    $(wildcard include/config/arch/have/custom/gpio/h.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/gpio.h \
    $(wildcard include/config/arch/nr/gpio.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/gpio.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/gpio/driver.h \
    $(wildcard include/config/gpiolib/irqchip.h) \
    $(wildcard include/config/gpio/generic.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irq.h \
    $(wildcard include/config/generic/irq/effective/aff/mask.h) \
    $(wildcard include/config/generic/irq/ipi.h) \
    $(wildcard include/config/irq/domain/hierarchy.h) \
    $(wildcard include/config/generic/irq/migration.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
    $(wildcard include/config/generic/irq/legacy/alloc/hwirq.h) \
    $(wildcard include/config/generic/irq/legacy.h) \
    $(wildcard include/config/generic/irq/multi/handler.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irqhandler.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/io.h \
  arch/arm/include/generated/asm/irq_regs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/asm-generic/irq_regs.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/generic/irq/debugfs.h) \
    $(wildcard include/config/handle/domain/irq.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/arch/arm/include/asm/hw_irq.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irqchip/chained_irq.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/irqdomain.h \
    $(wildcard include/config/irq/domain.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pinctrl/pinctrl.h \
    $(wildcard include/config/generic/pinconf.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pinctrl/pinctrl-state.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pinctrl/devinfo.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pinctrl/consumer.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pinctrl/pinconf-generic.h \
    $(wildcard include/config/debug/fs.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/pinctrl/machine.h \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/gpio/consumer.h \
    $(wildcard include/config/gpio/sysfs.h) \
  /home/donge/WorkSpace/IMX6ULL/source/ebf_linux_kernel/include/linux/cdev.h \

/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/epaper_driver.o: $(deps_/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/epaper_driver.o)

$(deps_/home/donge/WorkSpace/Program/Desktop_focus/Firmware/Epaper_Driver/epaper_driver.o):
