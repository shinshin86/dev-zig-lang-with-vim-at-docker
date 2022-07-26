# cd /root
cd ~

# zig setup
url=$(curl https://ziglang.org/download/index.json | jq -r '.master."x86_64-linux".tarball')
wget -O zig-linux-x86_64.tar.xz ${url}

mkdir zig-download
tar -Jxvf zig-linux-x86_64.tar.xz -C zig-download
mv zig-download/* zig-download/zig-linux-x86_64

echo 'export PATH=$PATH:/root/zig-download/zig-linux-x86_64' >> ~/.bashrc

# vim setup
curl -L https://raw.githubusercontent.com/shinshin86/dotfiles/master/setup-vimrc.sh | bash
curl -L https://raw.githubusercontent.com/shinshin86/dotfiles/master/.vimrc > ~/.vimrc
