说明
1.这是一个JS通过Ruby交互调用DLL的一个测试Demo
2.本测试Demo基于SketchUp平台,将文件夹中的rb文件放在相应SketchUp平台对应的AppData\Roaming目录下，如C:\Users\J&A\AppData\Roaming\SketchUp\SketchUp 2018\SketchUp\Plugins
3.将subNumber.html和SubNumber.dll放于一定的目录下，注意文件路径与rb文件中加载路径相同，且路径中不能包含特殊字符，如&
4.当SketchUp启动时会以插件的形式自动加载rb文件，启动后，在显示的对话框中操作来校验各语言的交互情况