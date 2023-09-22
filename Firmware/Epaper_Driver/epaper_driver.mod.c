#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x10d06f3b, "module_layout" },
	{ 0xd633690a, "driver_unregister" },
	{ 0xe85c13b, "__spi_register_driver" },
	{ 0x7772b225, "device_create" },
	{ 0xb489cb8d, "__class_create" },
	{ 0x99d31bfb, "cdev_add" },
	{ 0xb9aea4e3, "cdev_init" },
	{ 0xe3ec2f2b, "alloc_chrdev_region" },
	{ 0xed257b08, "spi_setup" },
	{ 0xe392d11e, "gpiod_direction_output_raw" },
	{ 0xe027f59b, "gpio_to_desc" },
	{ 0x470efb25, "of_get_named_gpio_flags" },
	{ 0x848f5838, "of_find_node_by_name" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0xf7d082ff, "cdev_del" },
	{ 0xa3f23a4d, "class_destroy" },
	{ 0x676c0ac6, "device_destroy" },
	{ 0x7c32d0f0, "printk" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "5BCE99782FD759F178A0BC5");
