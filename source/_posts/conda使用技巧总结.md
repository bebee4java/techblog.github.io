---
title: conda使用技巧总结
date: 2019-10-10 20:35:24
tags:
  - python
categories:
  - python
---
## 创建环境
创建一个名为py35的环境，指定Python版本是3.5（不用管是3.5.x，conda会为我们自动寻找3.５.x中的最新版本）
```python
conda create --name py35 python=3.5
```

## 激活环境
激活py35环境
```python
source activate py35
```

## 返回主环境
```python
source deactivate py35
```

## 删除环境
删除一个已有的环境
```python
conda remove --name py35 --all
```

## 查看系统中的所有环境
```python
conda info -e
```

## 安装库
```python
conda install numpy
```

## 查看已经安装的库
```python
conda list
```

## 搜索package的信息
```python
conda search numpy
```

## 安装package到指定的环境
如果不用-n指定环境名称，则被安装在当前活跃环境，也可以通过-c指定通过某个channel安装
```python
conda install -n py35 numpy
```

## 更新package
```python
conda update -n py35 numpy
```

## 删除package
```python
conda remove -n py35 numpy
```

## 设置国内镜像，加速conda
在User主目录下生成.condarc文件，删掉channels下面的 -defaults一行,使其不再访问默认channel
```python
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/

conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/

conda config --set show_channel_urls yes
```
