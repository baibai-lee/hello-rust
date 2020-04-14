# hello-rust

只是一个学习时简单的 demo 集合

### 基本使用

官方提供的用于构建的`cargo run`命令十分强大，但是不是当前的需求，我们需要每次编译并执行`src`下的单个文件，但是`cargo`会找到`src/main.rs`进行构建，因此写了一个简单的 shell 脚本进行编译，使用如下

```bash
./Run.sh [filename] # 注意此处不必加后缀名

# 例如：
# ./Run.sh gusee_game

# 若提示不能执行
chmod +x ./Run.sh
```
