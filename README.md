- 单 GPU 1050 ti 测试
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/xu574303479/xen-miner-sh/master/xen-miner-1050ti.sh && sudo chmod +x xen-miner-1050ti.sh && sudo ./xen-miner-1050ti.sh
  ```

- 单 GPU 3090
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/xu574303479/xen-miner-sh/master/xen-miner-3090-1.sh && sudo chmod +x xen-miner-3090-1.sh && sudo ./xen-miner-3090-1.sh
  ```

- 2 GPU 3090
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/xu574303479/xen-miner-sh/master/xen-miner-3090-2.sh && sudo chmod +x xen-miner-3090-2.sh && sudo ./xen-miner-3090-2.sh
  ```

- 4 GPU 3090
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/xu574303479/xen-miner-sh/master/xen-miner-3090-4.sh && sudo chmod +x xen-miner-3090-4.sh && sudo ./xen-miner-3090-4.sh
  ```

- 8 GPU 3090
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/xu574303479/xen-miner-sh/master/xen-miner-3090-8.sh && sudo chmod +x xen-miner-3090-8.sh && sudo ./xen-miner-3090-8.sh
  ```

- 2>&1：这部分表示将标准错误（文件描述符 2）重定向到标准输出（文件描述符 1）。换句话说，它将stderr与stdout合并在一起，所以两者都将写入到相同的位置。

- &：这个符号放在命令的末尾，表示将命令放入后台运行。这意味着命令将在后台运行，而不会阻塞当前终端会话。

- 因此，当运行 command 2>&1 & 时，command 命令将在后台运行，并且它的stdout和stderr都将合并在一起，输出到终端或文件，具体取决于您的重定向设置。

