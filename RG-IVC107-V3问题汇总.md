## 交换机问题：
1. RG-IVC107 V3 交换机（rtl8309m）功能调试完成，确定问题是因为交换机芯片对主控端io状态要求，硬件需下拉TX_EN和RX_DV引脚，配合软件强制输出。
