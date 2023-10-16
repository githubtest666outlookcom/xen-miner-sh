1.一键运行对应GPU配置命令,初始化配环境(sm_ 后面的参数是GPU计算能力,查询链接: https://developer.nvidia.com/cuda-gpus#compute)
-

- GPU sm_61 1050 ti 
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/xu574303479/xen-miner-sh/master/xen-miner-sm_61.sh && sudo chmod +x xen-miner-sm_61.sh && sudo ./xen-miner-sm_61.sh
  
  ```

- GPU sm_86 3090 3080 3070 3060 A4000 A5000 A6000 A10
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/xu574303479/xen-miner-sh/master/xen-miner-sm_86.sh && sudo chmod +x xen-miner-sm_86.sh && sudo ./xen-miner-sm_86.sh
  ```

- GPU sm_89 4090 4070
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/xu574303479/xen-miner-sh/master/xen-miner-sm_89.sh && sudo chmod +x xen-miner-sm_89.sh && sudo ./xen-miner-sm_89.sh
  ```


2.手动运行命令更换自己地址, 0x9bac6b1d00976eaacbe47031245a14e6d43f6d16 更换成为自己的挖矿地址
-
  ```
  cd /home/block/XENGPUMiner

  sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0x9bac6b1d00976eaacbe47031245a14e6d43f6d16/g' config.conf

  ```

3.后台运行 miner
-
  ```
  sudo nohup python3 miner.py --gpu=true > block.log 2>&1 &
  ```

4.开始挖矿
-

- 单 GPU 
  ```
  # 测试,观察算力是否正常
  ./xengpuminer -b 0

  # 结束测试
  ctrl + C

  # 后台运行挖矿
  sudo nohup ./xengpuminer -b 0 > xen-log.log 2>&1 &
  ```

- 多 GPU | 2GPU运行第1,2行 | 4GPU运行第1,2,3,4行 | ... 以此类推
  ```
  sudo nohup ./xengpuminer -d 0 > xen-log1.log 2>&1 &
  sudo nohup ./xengpuminer -d 1 > xen-log2.log 2>&1 &
  sudo nohup ./xengpuminer -d 2 > xen-log3.log 2>&1 &
  sudo nohup ./xengpuminer -d 3 > xen-log4.log 2>&1 &
  sudo nohup ./xengpuminer -d 4 > xen-log5.log 2>&1 &
  sudo nohup ./xengpuminer -d 5 > xen-log6.log 2>&1 &
  sudo nohup ./xengpuminer -d 6 > xen-log7.log 2>&1 &
  sudo nohup ./xengpuminer -d 7 > xen-log8.log 2>&1 &
  sudo nohup ./xengpuminer -d 8 > xen-log9.log 2>&1 &
  sudo nohup ./xengpuminer -d 9 > xen-log10.log 2>&1 &
  sudo nohup ./xengpuminer -d 10 > xen-log11.log 2>&1 &
  sudo nohup ./xengpuminer -d 11 > xen-log12.log 2>&1 &
  ...
  ```

5.问题
-
  ```
  # 出现 Have no CUDA! 错误
  root@tjy-admin:/home/block/XENGPUMiner# ./xengpuminer -b 0
  Have no CUDA!
  
  # 安装 CUDA
  https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=WSL-Ubuntu&target_version=2.0&target_type=deb_network
  
  ```


