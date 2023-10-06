# 地址
# 0x1cCF82683733c201e3D4d8cF7359c77aa55669Bd
# 环境配置
sudo apt update
sleep 5
sudo apt install ocl-icd-opencl-dev -y
sleep 10
sudo apt-get install build-essential
sleep 3
sudo apt install cmake -y
sleep 5
sudo apt install python3-pip -y
sleep 5
cd /home
sleep 1
mkdir block
sleep 1
cd block
sleep 1

# 下载代码
git clone https://github.com/shanhaicoder/XENGPUMiner.git
sleep 5
# 进入文件夹
cd XENGPUMiner
sleep 1
# 替换地址
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0x1cCF82683733c201e3D4d8cF7359c77aa55669Bd/g' config.conf

# 授权
chmod +x build.sh
sleep 1
# 初始化挖矿代码-设置显卡计算能力
# A4000 A5000 A6000 3090
./build.sh -cuda_arch sm_86
sleep 30


# 初始化
pip install -U -r requirements.txt
sleep 5

# 后台运行 miner
nohup python3 miner.py --gpu=true &>block.log &
sleep 3

# 列出所有支持设备
./xengpuminer -l -m cuda
sleep 1

# 查看进程
ps -aux|grep python3
sleep 1

# 单显卡
nohup ./xengpuminer -b 0 >xen-log.log &
sleep 3

# 查看进程
ps -aux|grep xengpuminer
sleep 1
