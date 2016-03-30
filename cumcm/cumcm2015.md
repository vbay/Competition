D1阶段Mod2实现求解
根据实际需求可知，该阶段主要操作为实现平缓位置的选取，根据模拟退火
原理进行改进如下
扫描规则
（1） 全局矩阵行记为i，列分别记为m。
（2） 每次移动扫描范围为100*100（即i+99，m+99）单位矩阵块，标记
点im（i，m）始终在单位矩阵块的“第一行第一列”。
（3） 标记点由全局的第一行第一列即im（1，1）开始。
（4） 在该行i，每次移动一个单元格i+1，移至2201结束。
（5） 标记点在该列移动一个单元格m+1，转至步骤（3），移至2201结
束。
其中，im为单元格，bim为100*100的单元矩阵块，每一个单元格的矩阵向右平移一列，直至2300*2300的单元矩阵平移完毕，然后单元格的矩阵向下平移一行，直至2300*2300的单元矩阵平移完毕。
寻找全局最优点，在扫描过程增加了筛选机制，通过模拟退火改进的算法,对目标函数方差的初始解、当前解、最优解进行筛选赋值，通过迭代得到最终的最优解。

代码为cumcm2015.m