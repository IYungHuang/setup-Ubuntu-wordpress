#! /bin/bash
echo 如有需求，請先於此創建新使用者/修改使用者命名：
sleep 2
創建新使用者(){
echo 你選擇要創建使用者，即將開始
sleep 3
read -n 8 -t 20 -p "輸入新增使用者的名稱: " username
if [ -z "$username" ]; then
echo "20秒內未建立新使用者，離開程序"
else
sudo adduser "$username"
cp setupbasic setupbasic$username 
sed -i 's/owner/'$username'/g' setupbasic$username
echo "完成更名，離開程序"
fi
exit
}
修改使用者命名(){
echo 你選擇要修改使用者命名，即將開始
sleep 3
read -n 8 -t 20 -p "輸入新的使用者命名:" NUSER
if [ -z "$NUSER" ]; then
echo "20秒內未更名，離開程序" 
else
cp setupbasic setupbasic$NUSER 
sed -i 's/owner/'$NUSER'/g' setupbasic$NUSER
echo "完成更名，離開程序"
fi
exit
}
離開程序(){
echo 即將離開程序
sleep 3
exit
}
echo 你想要做的事是：
OPTION="創建新使用者 修改使用者命名 離開程序"
select OPTION in $OPTION:
do
case $REPLY in
1)創建新使用者
;;
2)修改使用者命名
;;
3)離開程序
;;
*)echo "請在選項中挑選"
;;
esac
done

