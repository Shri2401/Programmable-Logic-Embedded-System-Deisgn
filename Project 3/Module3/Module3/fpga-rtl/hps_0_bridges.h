#ifndef _ALTERA_HPS_0_BRIDGES_H_
#define _ALTERA_HPS_0_BRIDGES_H_

/*
 * This file was automatically generated by the swinfo2header utility.
 * 
 * Created from SOPC Builder system 'soc_system' in
 * file './soc_system.sopcinfo'.
 */

/*
 * This file contains macros for module 'hps_0_bridges' and devices
 * connected to the following masters:
 *   axi_f2h
 *   h2f
 *   h2f_lw
 * 
 * Do not include this header file and another header file created for a
 * different module or master group at the same time.
 * Doing so may result in duplicate macro names.
 * Instead, use the system header file which has macros with unique names.
 */

/*
 * Macros for device 'hps_0_axi_sdram', class 'axi_sdram'
 * The macros are prefixed with 'HPS_0_AXI_SDRAM_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_AXI_SDRAM_COMPONENT_TYPE axi_sdram
#define HPS_0_AXI_SDRAM_COMPONENT_NAME hps_0_axi_sdram
#define HPS_0_AXI_SDRAM_BASE 0x0
#define HPS_0_AXI_SDRAM_SPAN 0x80000000
#define HPS_0_AXI_SDRAM_END 0x7fffffff
#define HPS_0_AXI_SDRAM_SIZE_MULTIPLE 1
#define HPS_0_AXI_SDRAM_SIZE_VALUE 1<<31
#define HPS_0_AXI_SDRAM_WRITABLE 1
#define HPS_0_AXI_SDRAM_MEMORY_INFO_GENERATE_DAT_SYM 0
#define HPS_0_AXI_SDRAM_MEMORY_INFO_GENERATE_HEX 0
#define HPS_0_AXI_SDRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 31

/*
 * Macros for device 'onchip_memory2_0', class 'altera_avalon_onchip_memory2'
 * The macros are prefixed with 'ONCHIP_MEMORY2_0_'.
 * The prefix is the slave descriptor.
 */
#define ONCHIP_MEMORY2_0_COMPONENT_TYPE altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_0_COMPONENT_NAME onchip_memory2_0
#define ONCHIP_MEMORY2_0_BASE 0x0
#define ONCHIP_MEMORY2_0_SPAN 65536
#define ONCHIP_MEMORY2_0_END 0xffff
#define ONCHIP_MEMORY2_0_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_0_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_0_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_0_DUAL_PORT 0
#define ONCHIP_MEMORY2_0_GUI_RAM_BLOCK_TYPE AUTO
#define ONCHIP_MEMORY2_0_INIT_CONTENTS_FILE soc_system_onchip_memory2_0
#define ONCHIP_MEMORY2_0_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_0_INSTANCE_ID NONE
#define ONCHIP_MEMORY2_0_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_0_RAM_BLOCK_TYPE AUTO
#define ONCHIP_MEMORY2_0_READ_DURING_WRITE_MODE DONT_CARE
#define ONCHIP_MEMORY2_0_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_0_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_0_SIZE_VALUE 65536
#define ONCHIP_MEMORY2_0_WRITABLE 1
#define ONCHIP_MEMORY2_0_MEMORY_INFO_DAT_SYM_INSTALL_DIR SIM_DIR
#define ONCHIP_MEMORY2_0_MEMORY_INFO_GENERATE_DAT_SYM 1
#define ONCHIP_MEMORY2_0_MEMORY_INFO_GENERATE_HEX 1
#define ONCHIP_MEMORY2_0_MEMORY_INFO_HAS_BYTE_LANE 0
#define ONCHIP_MEMORY2_0_MEMORY_INFO_HEX_INSTALL_DIR QPF_DIR
#define ONCHIP_MEMORY2_0_MEMORY_INFO_MEM_INIT_DATA_WIDTH 64
#define ONCHIP_MEMORY2_0_MEMORY_INFO_MEM_INIT_FILENAME soc_system_onchip_memory2_0

/*
 * Macros for device 'pio_led', class 'altera_avalon_pio'
 * The macros are prefixed with 'PIO_LED_'.
 * The prefix is the slave descriptor.
 */
#define PIO_LED_COMPONENT_TYPE altera_avalon_pio
#define PIO_LED_COMPONENT_NAME pio_led
#define PIO_LED_BASE 0x0
#define PIO_LED_SPAN 16
#define PIO_LED_END 0xf
#define PIO_LED_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_LED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_LED_CAPTURE 0
#define PIO_LED_DATA_WIDTH 10
#define PIO_LED_DO_TEST_BENCH_WIRING 0
#define PIO_LED_DRIVEN_SIM_VALUE 0
#define PIO_LED_EDGE_TYPE NONE
#define PIO_LED_FREQ 50000000
#define PIO_LED_HAS_IN 0
#define PIO_LED_HAS_OUT 1
#define PIO_LED_HAS_TRI 0
#define PIO_LED_IRQ_TYPE NONE
#define PIO_LED_RESET_VALUE 1023

/*
 * Macros for device 'sysid_qsys', class 'altera_avalon_sysid_qsys'
 * The macros are prefixed with 'SYSID_QSYS_'.
 * The prefix is the slave descriptor.
 */
#define SYSID_QSYS_COMPONENT_TYPE altera_avalon_sysid_qsys
#define SYSID_QSYS_COMPONENT_NAME sysid_qsys
#define SYSID_QSYS_BASE 0x10000
#define SYSID_QSYS_SPAN 8
#define SYSID_QSYS_END 0x10007
#define SYSID_QSYS_ID 2899645186
#define SYSID_QSYS_TIMESTAMP 1700594438

/*
 * Macros for device 'jtag_uart', class 'altera_avalon_jtag_uart'
 * The macros are prefixed with 'JTAG_UART_'.
 * The prefix is the slave descriptor.
 */
#define JTAG_UART_COMPONENT_TYPE altera_avalon_jtag_uart
#define JTAG_UART_COMPONENT_NAME jtag_uart
#define JTAG_UART_BASE 0x20000
#define JTAG_UART_SPAN 8
#define JTAG_UART_END 0x20007
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8

/*
 * Macros for device 'hps_0_gmac0', class 'stmmac'
 * The macros are prefixed with 'HPS_0_GMAC0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_GMAC0_COMPONENT_TYPE stmmac
#define HPS_0_GMAC0_COMPONENT_NAME hps_0_gmac0
#define HPS_0_GMAC0_BASE 0xff700000
#define HPS_0_GMAC0_SPAN 8192
#define HPS_0_GMAC0_END 0xff701fff

/*
 * Macros for device 'hps_0_gmac1', class 'stmmac'
 * The macros are prefixed with 'HPS_0_GMAC1_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_GMAC1_COMPONENT_TYPE stmmac
#define HPS_0_GMAC1_COMPONENT_NAME hps_0_gmac1
#define HPS_0_GMAC1_BASE 0xff702000
#define HPS_0_GMAC1_SPAN 8192
#define HPS_0_GMAC1_END 0xff703fff

/*
 * Macros for device 'hps_0_sdmmc', class 'sdmmc'
 * The macros are prefixed with 'HPS_0_SDMMC_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_SDMMC_COMPONENT_TYPE sdmmc
#define HPS_0_SDMMC_COMPONENT_NAME hps_0_sdmmc
#define HPS_0_SDMMC_BASE 0xff704000
#define HPS_0_SDMMC_SPAN 4096
#define HPS_0_SDMMC_END 0xff704fff

/*
 * Macros for device 'hps_0_qspi', class 'cadence_qspi'
 * The macros are prefixed with 'HPS_0_QSPI_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_QSPI_COMPONENT_TYPE cadence_qspi
#define HPS_0_QSPI_COMPONENT_NAME hps_0_qspi
#define HPS_0_QSPI_BASE 0xff705000
#define HPS_0_QSPI_SPAN 256
#define HPS_0_QSPI_END 0xff7050ff

/*
 * Macros for device 'hps_0_fpgamgr', class 'altera_fpgamgr'
 * The macros are prefixed with 'HPS_0_FPGAMGR_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_FPGAMGR_COMPONENT_TYPE altera_fpgamgr
#define HPS_0_FPGAMGR_COMPONENT_NAME hps_0_fpgamgr
#define HPS_0_FPGAMGR_BASE 0xff706000
#define HPS_0_FPGAMGR_SPAN 4096
#define HPS_0_FPGAMGR_END 0xff706fff

/*
 * Macros for device 'hps_0_gpio0', class 'dw_gpio'
 * The macros are prefixed with 'HPS_0_GPIO0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_GPIO0_COMPONENT_TYPE dw_gpio
#define HPS_0_GPIO0_COMPONENT_NAME hps_0_gpio0
#define HPS_0_GPIO0_BASE 0xff708000
#define HPS_0_GPIO0_SPAN 256
#define HPS_0_GPIO0_END 0xff7080ff

/*
 * Macros for device 'hps_0_gpio1', class 'dw_gpio'
 * The macros are prefixed with 'HPS_0_GPIO1_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_GPIO1_COMPONENT_TYPE dw_gpio
#define HPS_0_GPIO1_COMPONENT_NAME hps_0_gpio1
#define HPS_0_GPIO1_BASE 0xff709000
#define HPS_0_GPIO1_SPAN 256
#define HPS_0_GPIO1_END 0xff7090ff

/*
 * Macros for device 'hps_0_gpio2', class 'dw_gpio'
 * The macros are prefixed with 'HPS_0_GPIO2_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_GPIO2_COMPONENT_TYPE dw_gpio
#define HPS_0_GPIO2_COMPONENT_NAME hps_0_gpio2
#define HPS_0_GPIO2_BASE 0xff70a000
#define HPS_0_GPIO2_SPAN 256
#define HPS_0_GPIO2_END 0xff70a0ff

/*
 * Macros for device 'hps_0_l3regs', class 'altera_l3regs'
 * The macros are prefixed with 'HPS_0_L3REGS_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_L3REGS_COMPONENT_TYPE altera_l3regs
#define HPS_0_L3REGS_COMPONENT_NAME hps_0_l3regs
#define HPS_0_L3REGS_BASE 0xff800000
#define HPS_0_L3REGS_SPAN 4096
#define HPS_0_L3REGS_END 0xff800fff

/*
 * Macros for device 'hps_0_nand0', class 'denali_nand'
 * The macros are prefixed with 'HPS_0_NAND0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_NAND0_COMPONENT_TYPE denali_nand
#define HPS_0_NAND0_COMPONENT_NAME hps_0_nand0
#define HPS_0_NAND0_BASE 0xff900000
#define HPS_0_NAND0_SPAN 65536
#define HPS_0_NAND0_END 0xff90ffff

/*
 * Macros for device 'hps_0_usb0', class 'usb'
 * The macros are prefixed with 'HPS_0_USB0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_USB0_COMPONENT_TYPE usb
#define HPS_0_USB0_COMPONENT_NAME hps_0_usb0
#define HPS_0_USB0_BASE 0xffb00000
#define HPS_0_USB0_SPAN 262144
#define HPS_0_USB0_END 0xffb3ffff

/*
 * Macros for device 'hps_0_usb1', class 'usb'
 * The macros are prefixed with 'HPS_0_USB1_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_USB1_COMPONENT_TYPE usb
#define HPS_0_USB1_COMPONENT_NAME hps_0_usb1
#define HPS_0_USB1_BASE 0xffb40000
#define HPS_0_USB1_SPAN 262144
#define HPS_0_USB1_END 0xffb7ffff

/*
 * Macros for device 'hps_0_dcan0', class 'bosch_dcan'
 * The macros are prefixed with 'HPS_0_DCAN0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_DCAN0_COMPONENT_TYPE bosch_dcan
#define HPS_0_DCAN0_COMPONENT_NAME hps_0_dcan0
#define HPS_0_DCAN0_BASE 0xffc00000
#define HPS_0_DCAN0_SPAN 4096
#define HPS_0_DCAN0_END 0xffc00fff

/*
 * Macros for device 'hps_0_dcan1', class 'bosch_dcan'
 * The macros are prefixed with 'HPS_0_DCAN1_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_DCAN1_COMPONENT_TYPE bosch_dcan
#define HPS_0_DCAN1_COMPONENT_NAME hps_0_dcan1
#define HPS_0_DCAN1_BASE 0xffc01000
#define HPS_0_DCAN1_SPAN 4096
#define HPS_0_DCAN1_END 0xffc01fff

/*
 * Macros for device 'hps_0_uart0', class 'snps_uart'
 * The macros are prefixed with 'HPS_0_UART0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_UART0_COMPONENT_TYPE snps_uart
#define HPS_0_UART0_COMPONENT_NAME hps_0_uart0
#define HPS_0_UART0_BASE 0xffc02000
#define HPS_0_UART0_SPAN 256
#define HPS_0_UART0_END 0xffc020ff
#define HPS_0_UART0_FIFO_DEPTH 128
#define HPS_0_UART0_FIFO_HWFC 0
#define HPS_0_UART0_FIFO_MODE 1
#define HPS_0_UART0_FIFO_SWFC 0
#define HPS_0_UART0_FREQ 100000000

/*
 * Macros for device 'hps_0_uart1', class 'snps_uart'
 * The macros are prefixed with 'HPS_0_UART1_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_UART1_COMPONENT_TYPE snps_uart
#define HPS_0_UART1_COMPONENT_NAME hps_0_uart1
#define HPS_0_UART1_BASE 0xffc03000
#define HPS_0_UART1_SPAN 256
#define HPS_0_UART1_END 0xffc030ff
#define HPS_0_UART1_FIFO_DEPTH 128
#define HPS_0_UART1_FIFO_HWFC 0
#define HPS_0_UART1_FIFO_MODE 1
#define HPS_0_UART1_FIFO_SWFC 0
#define HPS_0_UART1_FREQ 100000000

/*
 * Macros for device 'hps_0_i2c0', class 'designware_i2c'
 * The macros are prefixed with 'HPS_0_I2C0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_I2C0_COMPONENT_TYPE designware_i2c
#define HPS_0_I2C0_COMPONENT_NAME hps_0_i2c0
#define HPS_0_I2C0_BASE 0xffc04000
#define HPS_0_I2C0_SPAN 256
#define HPS_0_I2C0_END 0xffc040ff

/*
 * Macros for device 'hps_0_i2c1', class 'designware_i2c'
 * The macros are prefixed with 'HPS_0_I2C1_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_I2C1_COMPONENT_TYPE designware_i2c
#define HPS_0_I2C1_COMPONENT_NAME hps_0_i2c1
#define HPS_0_I2C1_BASE 0xffc05000
#define HPS_0_I2C1_SPAN 256
#define HPS_0_I2C1_END 0xffc050ff

/*
 * Macros for device 'hps_0_i2c2', class 'designware_i2c'
 * The macros are prefixed with 'HPS_0_I2C2_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_I2C2_COMPONENT_TYPE designware_i2c
#define HPS_0_I2C2_COMPONENT_NAME hps_0_i2c2
#define HPS_0_I2C2_BASE 0xffc06000
#define HPS_0_I2C2_SPAN 256
#define HPS_0_I2C2_END 0xffc060ff

/*
 * Macros for device 'hps_0_i2c3', class 'designware_i2c'
 * The macros are prefixed with 'HPS_0_I2C3_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_I2C3_COMPONENT_TYPE designware_i2c
#define HPS_0_I2C3_COMPONENT_NAME hps_0_i2c3
#define HPS_0_I2C3_BASE 0xffc07000
#define HPS_0_I2C3_SPAN 256
#define HPS_0_I2C3_END 0xffc070ff

/*
 * Macros for device 'hps_0_timer0', class 'dw_apb_timer_sp'
 * The macros are prefixed with 'HPS_0_TIMER0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_TIMER0_COMPONENT_TYPE dw_apb_timer_sp
#define HPS_0_TIMER0_COMPONENT_NAME hps_0_timer0
#define HPS_0_TIMER0_BASE 0xffc08000
#define HPS_0_TIMER0_SPAN 256
#define HPS_0_TIMER0_END 0xffc080ff

/*
 * Macros for device 'hps_0_timer1', class 'dw_apb_timer_sp'
 * The macros are prefixed with 'HPS_0_TIMER1_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_TIMER1_COMPONENT_TYPE dw_apb_timer_sp
#define HPS_0_TIMER1_COMPONENT_NAME hps_0_timer1
#define HPS_0_TIMER1_BASE 0xffc09000
#define HPS_0_TIMER1_SPAN 256
#define HPS_0_TIMER1_END 0xffc090ff

/*
 * Macros for device 'hps_0_sdrctl', class 'altera_sdrctl'
 * The macros are prefixed with 'HPS_0_SDRCTL_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_SDRCTL_COMPONENT_TYPE altera_sdrctl
#define HPS_0_SDRCTL_COMPONENT_NAME hps_0_sdrctl
#define HPS_0_SDRCTL_BASE 0xffc25000
#define HPS_0_SDRCTL_SPAN 4096
#define HPS_0_SDRCTL_END 0xffc25fff

/*
 * Macros for device 'hps_0_timer2', class 'dw_apb_timer_osc'
 * The macros are prefixed with 'HPS_0_TIMER2_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_TIMER2_COMPONENT_TYPE dw_apb_timer_osc
#define HPS_0_TIMER2_COMPONENT_NAME hps_0_timer2
#define HPS_0_TIMER2_BASE 0xffd00000
#define HPS_0_TIMER2_SPAN 256
#define HPS_0_TIMER2_END 0xffd000ff

/*
 * Macros for device 'hps_0_timer3', class 'dw_apb_timer_osc'
 * The macros are prefixed with 'HPS_0_TIMER3_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_TIMER3_COMPONENT_TYPE dw_apb_timer_osc
#define HPS_0_TIMER3_COMPONENT_NAME hps_0_timer3
#define HPS_0_TIMER3_BASE 0xffd01000
#define HPS_0_TIMER3_SPAN 256
#define HPS_0_TIMER3_END 0xffd010ff

/*
 * Macros for device 'hps_0_clkmgr', class 'asimov_clkmgr'
 * The macros are prefixed with 'HPS_0_CLKMGR_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_CLKMGR_COMPONENT_TYPE asimov_clkmgr
#define HPS_0_CLKMGR_COMPONENT_NAME hps_0_clkmgr
#define HPS_0_CLKMGR_BASE 0xffd04000
#define HPS_0_CLKMGR_SPAN 4096
#define HPS_0_CLKMGR_END 0xffd04fff

/*
 * Macros for device 'hps_0_rstmgr', class 'altera_rstmgr'
 * The macros are prefixed with 'HPS_0_RSTMGR_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_RSTMGR_COMPONENT_TYPE altera_rstmgr
#define HPS_0_RSTMGR_COMPONENT_NAME hps_0_rstmgr
#define HPS_0_RSTMGR_BASE 0xffd05000
#define HPS_0_RSTMGR_SPAN 256
#define HPS_0_RSTMGR_END 0xffd050ff

/*
 * Macros for device 'hps_0_sysmgr', class 'altera_sysmgr'
 * The macros are prefixed with 'HPS_0_SYSMGR_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_SYSMGR_COMPONENT_TYPE altera_sysmgr
#define HPS_0_SYSMGR_COMPONENT_NAME hps_0_sysmgr
#define HPS_0_SYSMGR_BASE 0xffd08000
#define HPS_0_SYSMGR_SPAN 1024
#define HPS_0_SYSMGR_END 0xffd083ff

/*
 * Macros for device 'hps_0_dma', class 'arm_pl330_dma'
 * The macros are prefixed with 'HPS_0_DMA_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_DMA_COMPONENT_TYPE arm_pl330_dma
#define HPS_0_DMA_COMPONENT_NAME hps_0_dma
#define HPS_0_DMA_BASE 0xffe01000
#define HPS_0_DMA_SPAN 4096
#define HPS_0_DMA_END 0xffe01fff

/*
 * Macros for device 'hps_0_spim0', class 'spi'
 * The macros are prefixed with 'HPS_0_SPIM0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_SPIM0_COMPONENT_TYPE spi
#define HPS_0_SPIM0_COMPONENT_NAME hps_0_spim0
#define HPS_0_SPIM0_BASE 0xfff00000
#define HPS_0_SPIM0_SPAN 256
#define HPS_0_SPIM0_END 0xfff000ff

/*
 * Macros for device 'hps_0_spim1', class 'spi'
 * The macros are prefixed with 'HPS_0_SPIM1_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_SPIM1_COMPONENT_TYPE spi
#define HPS_0_SPIM1_COMPONENT_NAME hps_0_spim1
#define HPS_0_SPIM1_BASE 0xfff01000
#define HPS_0_SPIM1_SPAN 256
#define HPS_0_SPIM1_END 0xfff010ff

/*
 * Macros for device 'hps_0_timer', class 'arm_internal_timer'
 * The macros are prefixed with 'HPS_0_TIMER_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_TIMER_COMPONENT_TYPE arm_internal_timer
#define HPS_0_TIMER_COMPONENT_NAME hps_0_timer
#define HPS_0_TIMER_BASE 0xfffec600
#define HPS_0_TIMER_SPAN 256
#define HPS_0_TIMER_END 0xfffec6ff

/*
 * Macros for device 'hps_0_arm_gic_0', class 'arm_gic'
 * The macros are prefixed with 'HPS_0_ARM_GIC_0_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_ARM_GIC_0_COMPONENT_TYPE arm_gic
#define HPS_0_ARM_GIC_0_COMPONENT_NAME hps_0_arm_gic_0
#define HPS_0_ARM_GIC_0_BASE 0xfffed000
#define HPS_0_ARM_GIC_0_SPAN 4096
#define HPS_0_ARM_GIC_0_END 0xfffedfff

/*
 * Macros for device 'hps_0_L2', class 'arm_pl310_L2'
 * The macros are prefixed with 'HPS_0_L2_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_L2_COMPONENT_TYPE arm_pl310_L2
#define HPS_0_L2_COMPONENT_NAME hps_0_L2
#define HPS_0_L2_BASE 0xfffef000
#define HPS_0_L2_SPAN 4096
#define HPS_0_L2_END 0xfffeffff

/*
 * Macros for device 'hps_0_axi_ocram', class 'axi_ocram'
 * The macros are prefixed with 'HPS_0_AXI_OCRAM_'.
 * The prefix is the slave descriptor.
 */
#define HPS_0_AXI_OCRAM_COMPONENT_TYPE axi_ocram
#define HPS_0_AXI_OCRAM_COMPONENT_NAME hps_0_axi_ocram
#define HPS_0_AXI_OCRAM_BASE 0xffff0000
#define HPS_0_AXI_OCRAM_SPAN 65536
#define HPS_0_AXI_OCRAM_END 0xffffffff
#define HPS_0_AXI_OCRAM_SIZE_MULTIPLE 1
#define HPS_0_AXI_OCRAM_SIZE_VALUE 1<<16
#define HPS_0_AXI_OCRAM_WRITABLE 1
#define HPS_0_AXI_OCRAM_MEMORY_INFO_GENERATE_DAT_SYM 0
#define HPS_0_AXI_OCRAM_MEMORY_INFO_GENERATE_HEX 0
#define HPS_0_AXI_OCRAM_MEMORY_INFO_MEM_INIT_DATA_WIDTH 16


#endif /* _ALTERA_HPS_0_BRIDGES_H_ */
