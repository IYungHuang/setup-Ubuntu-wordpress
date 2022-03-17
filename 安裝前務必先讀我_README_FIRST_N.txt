要請先連上網路，知道你root的密碼，切換至root身份，
然後接下來程序腳本將會幫你安裝/調整網路相關套件/配置。

幫你下載/建置好以下軟體與狀態
ftp/synaptic/openssh/ufw/apache/php

你可以後續再選擇安裝/安置以下軟體：
net2ftp/phpMyAdmin/mysql/wordpress

務必注意以下事項：
1.建議手動固定IP設置連外網路

2.微軟windows端請先下載好PUTTY與FileZilla以測試安全連外連結

3.預設使用者名稱為：owner，假如需要創建/更改使用者名稱，
  請先執行change_username_or_adduser程序，以利後續正確執行

4.煩請在此資料夾執行終端機，並用以下格式在命令列中輸入執行程序： 
  bash 你要執行的程序檔案名稱。
  如：bash setupbasic.sh

5.安裝完mysql之後，需要新增最高管理者admin並給予最高權限，
  請依序執行以下指令：
  <1>進入mysql
  mysql
  <2>新增最高管理者
  CREATE USER 'admin'@'%' IDENTIFIED BY '輸入自訂密碼';
  <3>給予管理者最高權限
  GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
  <4>離開mysql
  exit

6. 安置好wordpress資料夾後，相關資料庫指定，新增使用者與設定請參照此篇
   <如何安裝wordpress>
  
************* 依照你的狀況，選擇要執行的程序 ****************** 
  (1)如果你的使用者名稱已經是owner，則不需做調整，用以下程序開始
  setupbasic.sh
  
  (2)如果你的使用者名稱不是Oowner，則你需要依順序執行以下兩程序
  change_username_or_adduser.sh   setupbasic.sh   
  
  (3)假如你要安裝net2fftp，請執行以下程序
  setup_n2ftp.sh
  
  (4)假如你要安裝phpMyAdmin與mysql，請執行以下程序
  setup_phpMdnmsql.sh
  
  **注意！安裝後需執行上方第5點--<新增管理者並給予最高權限> 
  
  (5)假如你要安置好wordpress資料檔，請執行以下程序
  setup_wp.sh
  
  實際安裝好wordpress還需要一些步驟，請另外參照文件檔
  <如何安裝wordpress>

**************************************************************  
**測試版本，持續修正。              mailto:bioideastw@gmail.com
**************************************************************
