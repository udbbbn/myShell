## git 脚本

1. stash 储藏当前分支工作目录 并切换至 指定分支

   ```shell
   stash.sh branch
   ```

2. b-stash 切换至 指定分支 并存储藏栈中拉取最近被储藏的分支工作目录

   ```shell
   b-stash.sh branch
   ```

3. rebase 切换至指定分支并拉取远端 合并至当前分支

   ```shell
   rebase.sh branch
   ```

4. commit 执行 add commit 指令

   ```shell
   commit.sh '注释'
   ```

5. push 切换到指定分支 rebase 切换前的分支并推送远端
  
   ```shell
   push.sh branch
   ```
   
   

#### macOS 修改path环境变量

终端输入`vi ~/.bash_profile`

添加 `export PATH=$PATH:~/Desktop/myShell(脚本路径)` 保存

执行 `source ~/.bash_profile`

执行 `echo $PATH` 能看到脚本目录已被添加到环境变量



##### 若用的是 zsh

终端输入 `vi ~/.zshrc`

在文件末尾加上 `source ~/.bash_profile`

