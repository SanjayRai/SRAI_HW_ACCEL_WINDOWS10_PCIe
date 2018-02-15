# __SRAI (Sanjay Rai)
This is a simple basic example on creating a Partial Reconfigurable FPGA and loading the Partial bit files using ICAP over PCIe.

1. use the linux_google_io_hw_test_scripts/axi_hwicap.py Python script to program a Partial bit file or Clearing bitfile.
2. Initial bitfileis loaded via JTAG or External PROM which contains the full image (Both Static Portion and PR).
3. Subsequent loads of the PR images (Partial and clearing) can be done via JTAG or AXIHW_ICAP (using axi_hwicap.py).
