## 使用“触发词”

!!! info "什么是触发词"  
	为了使用bot提供的功能，需要在指令前增加的额外单词。例如某群的触发词为`bot`，则在调用所有普通功能前，需要在所有指令之前添加`bot`。
	
### 获取当前的“触发词”
* 固定格式：`sudo trigger-get`
	
### 设置“触发词”
	
* 固定格式：`#set-trigger [value|/default]`
	- 调用此命令的人员至少需要具有<span class="guanli">管理员</span>权限
	- `value`的取值可以为新的触发词，也可以为开关值`/default`
		* 若取值含有`/default`，则当前群的“触发词”将回复默认状态(即“JRbot”)
	- 由于该功能属于群管理模块，故当bot并非为管理员权限时，可能会发送警告  
		```text
		<Warning>bot 不具有管理员权限，功能可能会失效
		```
		对于设置“触发词”来说，可以忽略这条警告，新的触发词仍然可以生效。
	- 还未初始化的bot，该群不会拥有触发词
		* 所以需要尽快使用`#init`命令来初始化bot，否则无法使用bot功能

### 使用“触发词”的必要性
* 在这里，开发者想多说几句，使用触发词，真的有那么麻烦吗？

	> 之前也见过其他人开发的bot，往往使用了一堆`/`号开头的短指令来解决指令太长的问题，确实也不错，因为正常语句中很少使用`/`这个符号。当然，我也考虑过，记住触发词是十分麻烦且不必要的，而且还会有打错的可能性。但是，如果一个群有很多bot，且它们都用`/`作为短指令符号，就很有可能会撞指令，一次出现很多个回复，有失指向性。所以，经过权衡，我还是决定保留触发词调用功能的方式，至少如果有某位群友想专门用我的bot调用某功能，他不必担心撞指令的问题。