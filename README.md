# OTUS-Linux-2018-04
Repository for Linux group

## Homework 1
 - В рамках первого ДЗ была подготовлена виртуальная машина на базе **CentOS**
 - Для сборки ядра была скачана версия **3.16.56** с сайта *http://www.kernel.org*
 - Было собрано ядро
 - Результирующий файл конфигурации (**.config**) и файл со списком того, что было установлено (**yum.log**), были выложены в папке **HW-1**

## Homework 2
 - В рамках второго ДЗ было протестировано создание RAID для виртуальной машины, созданной с помощью **Vagrantfile**; также была протестировано ломание и починка **RAID**
 - Был видоизменен **Vagrantfile**, включающий теперь создание пяти дисков и **RAID 5** на базе них. Также при создании виртуальной машины из **Vagrantfile** создаются пять **GPT** партиций размером 100 MiB
 - Результирующий **Vagrantfile** и скрипт для создания RAID с партициями **startup_scripts.sh** были выложены в папке **HW-2**

## Homework 3
 - В рамках третьего ДЗ были протестированы работа LVM, работа со LVM снэпшотами. Логи работы с машиной были выложены в файле **log.txt**, лежащего в папке **HW-3**. Для работы с LVM была использована тестовая виртуалка VMware.
 - Выложил результат логов команд для части задания по уменьшению / до 8G в файле **log_8G.txt**. Для этой задачи использовал виртуальную машину, поднятую на Vagrant. Для уменьшения XFS до 8G использовать RescueCD. 
 - Для уменьшения партиции использовал метод, описанный в статье **http://www.hhutzler.de/blog/shrinking-xfs-partition/**: 1) сделал бэкап root партиции с помощью xfsdump, 2) дропнул старый root logical volume и восстановил root партицию из бэкапа 

## Homework 4
 - В рамках четвертого ДЗ было протестированы способы попадания в систему без пароля. Список методов и их описание приведено в файле **boot_without_root_password.txt**, лежащего в папке **HW-4**
 - Была установлена система с LVM, после чего была переименована VG. Логи команд приведены в файле **rename_vg.txt**, лежащего в папке **HW-4**
 - Был добавлен модуль в **initrd**. Логи команд приведены в файле **add_module_to_initrd.txt**, лежащего в папке **HW-4**

## Homework 5
 - Был добавлен скрипт **uptime.sh** для проверки сервиса **Apache HTTP**. При неработающем сервисе скрипт запускает сервис **Apache HTTP**. Скрипт проверяет состояние сервиса каждые пять минут. Для этого добавляем запись в cron в виде  */5 * * * * /root/uptime.sh > /dev/null 2>/dev/null. Файл **uptime.sh** и запись в cron (файл **add to crontab for uptime script.txt**) выложены в папке **HW-5**. Этот скрипт также отправляет сообщение на e-mail в случае, если сервис не запущен.
 - Был добавлен скрипт **multiple_launch.sh**, который предотвращает повторный запуск по **cron**-у. Пример приведен для задачи синхронизации файлов. Файл выложен в папке **HW-5**.
 - Был добавлен скрипт **apache_log.sh**, который выдает следующие данные по Apache на базе логфайла: минимальное/среднее/максимальное время отклика, список IP адресов "посетителей" сервера, количество запросов для IP адресов "посетителей" сервера, список запросов IP-страниц в реальном времени. Пример результата скрипта показан в файле **apache_result.txt**. Файлы выложены в папке **HW-5**.
- Был добавлен скрипт **watchdog.sh**, который является общим и который можно модифицировать для того системного сервиса, который нам нужен. Необходимо запускать в виде **cron job**-а под **root**. Файл выложен в папке **HW-5**.

## Homework 6
 - В рамках задания для написания сервиса, который будет раз в 30 секунд мониторить лог на предмет наличия ключевого слова был добавлен файл **journalctl.txt** в папку **HW-6**. В нем приведены логи команд для решения данной задачи.
 - В рамках задания для установки **spawn-fcgi** написания сервиса, который будет раз в 30 секунд мониторить лог на предмет наличия ключевого слова был добавлен файл **spawn-fcgi.txt** в папку **HW-6**. В нем приведены логи команд для решения данной задачи.
 - В рамках задания для запуска несколько инстансов **apache** был добавлен файл **multiple_apache_instances.txt** в папку **HW-6**. В нем приведены логи команд для решения данной задачи.

 ## Homework 7
 - В рамках задания для написания своей реализации аналога **lsof** был добавлен скрипт **script_lsof_alternative.sh**, который показывает открытые файлы из файловой системы **proc**. Файл выложен в папку **HW-7**. Необходимо скачать скрипт, сделать **chmod +x** и запустить скрипт. Результаты выполнения скрипта показаны в файле **script.log**, который выложен в папку **HW-7**.

 ## Homework 8
 - В рамках задания для сборки собственного **RPM package**, создания локального репозитория и установки **RPM package** из этого репозитория были добавлены файлы в папку **HW-8**. В файле **create_rpm.log** показаны логи команд для решения задачи по сборке **RPM package** для приложения **hello world**. Файл **hello-1.0-1.x86_64.rpm** представляет собой сам **RPM package**. Файл **create_repo_script.sh** представляет собой скрипт, который необходимо скачать на тестовую машину, сделать **chmod +x** и запустить его. Скрипт создаст локальный репозиторий, скачает **RPM package** из **GIT** репозитория и установит этот **package**. После завершения скрипта можно ввести команду **hello**. На выходе получим **hello world**.

 ## Homework 9
 - В рамках задания для развертывания сетевой лаборатории был отредактирован **Vagrantfile**, который создает группу виртуальных машин. После создания все сервера видят друг друга. Результат приведен в файле **pings.txt**. Все созданные подсети, включая дополнительные, созданные для линков **centralRouter/office1Router** и **centralRouter/office2Router**, приведены в файле **subnets.txt**. В этом же файле описано количество хостов, широковещательный адрес для каждой подсети а также приведен список свободных подсетей для **192.168.0.0/24, 192.168.1.0/24, 192.168.2.0/24**. Все файлы выложены в папку **HW-9**. 

 ## Homework 10
 - В рамках задания для тестирования **VLAN** и **Bonding** был  отредактирован **Vagrantfile**, который создает группу виртуальных машин. Виртуальные машины **testClient1** и **testServer1** были помещены в *VLAN 1*, **testClient2** и **testServer2** в *VLAN 2*. Результаты настроек и пингов для данных машины приведены в файле **VLAN.txt**. Между маршрутизаторами **inetRouter** и **centralRouter** был настроен **Round-robin policy bonding** в линковой сети **router-net**. Результаты настроек, тестового отключения интерфейсов и пингов приведены в файле **Bonding.txt**. Все файлы, включая скипты для **Vagrantfile** выложены в папку **HW-10**. 

 ## Homework 11
 - В рамках задания по настройке **VPN** между виртуальными машинами был поднят **VPN** в режимах **tap** и **tun**. Итоговые настройки и результат тестирования в виде *ping*-а *loopback* интерфейса приведены в файлах **tap_vpn.txt** и **tun_vpn.txt**. В рамках задания по поднятию **OpenVPN** сервера был развернут сервер для **OpenVPN**. Итоговые результаты подключения с клиентской виртуальной машины приведены в файле **openvpn.txt**. Все файлы выложены в папку **HW-11**. 

 ## Homework 12
 - В рамках задания по настройке **OSPF** между тремя маршрутизаторами был поднят стенд из трех машин **R1**, **R2**, **R3**. Между каждой парой маршрутизаторов были настроены линковые адреса в сетях с маской /30. В рамках **OSPF** был настроен **Redistribution** **Loopback** адресов в **OSPF** с помощью **ROUTE MAP**. Итоговые конфигурации, маршруты, пинги **Loopback** адресов соседних маршрутизаторов приведены в файлах **R1.txt**, **R2.txt**, **R3.txt**. Все файлы выложены в папку **HW-12**. 

 ## Homework 13
 - В рамках задания по настройке **DNS** сервера был поднят стенд на базе **Vagrant** и **Ansible плейбука**. В первой части задании были добавлены имена **web1**, **web2** в зону **dns.lab**. Во второй части задания была заведена еще одна зона **newdns.lab** (без обратной зоны). Результат команд с клиентов выложены в файлах **client**, **client2** в папке **HW-13/first part**. Конфигурация **named.conf** и зон на примере сервера **ns01** выложена в файле **ns01** в папке **HW-13/first part**. В третьей части ДЗ был поднят стенд для настройки **split-dns**. Как и было необходимо, **client** видит обе зоны, но в зоне **dns.lab** только **web1**, а **client2** видит только зону **dns.lab**. Результаты тестов с клиентов выложены в файлах **client**, **client2** в папке **HW-13/second part**. Конфигурация **named.conf** и зон на примере сервера **ns01** выложена в файле **ns01** в папке **HW-13/second part**.

 ## Homework 14
 - В рамках задания по фильтрации трафика был поднят стенд на инфраструктуре **VMware** в виде четырех виртуальных машин (**inetRouter**, **inetRouter2**, **centralRouter**, **centralServer**). Маршрутизатор **centralRouter** был подключен к **inetRouter** и **inetRouter2** с помощью своей линковой сети с маской /30. На **centralRouter** была заведена дополнительная сеть **192.168.0.0/24** для подключения сервера **centralServer**. Между тремя маршрутизаторами был поднят **OSPF**, в качестве **router-id** были указаны **Loopback** адреса данных маршрутизаторов. В рамках первого задания был поднят **Knocking Server** на **inetRouter**. В рамках конфигурации были добавлены правила для разрешения SSH подключения с того IP адреса, с которого будет запрос **Knocking**. На **centralRouter** был настроен **Knocking Script**, в результате выполнения которого становится доступен **inetRouter** по **SSH**. В рамках второго задания был добавлен **inetRouter2**, который виден с **centralServer** (IP=192.168.255.6). В рамках третьего задания на сервере **centralServer** был поднят **Nginx**. В рамках четвертого задания на маршрутизаторе **inetRouter2** был настроен **Port Forwarding** с порта **8080** на порт **80** сервера **centralServer**. В рамках пятого задания был настроен **default** на **centralRouter** в сторону **inetRouter**. Кроме того с помощью **iproute2** была настроена таблица маршрутизации **rt2**, а также добавлены правила, указывающие, что сервер **centralServer** ходит в Интернет через маршрутизатор **inetRouter2**. Для остальных сервисов дефолтом является **inetRouter**. Результаты выполения команд, конфигурация для всех устройств выложены в файлах **centralRouter.txt**, **centralServer.txt**, **inetRouter.txt**, **inetRouter2.txt** в папке **HW-14**. Также в этой папке можно найти скриншот **nginx.png**, показывающий успешный **Port Forwarding** с **inetRouter2** на **centralServer**, на котором установлен **Nginx**.

 ## Homework 15
 - В прошлом ДЗ была поднята инфраструктура на VMware. В рамках данного ДЗ был поднят аналогичный стенд на **Vagrant** и **Ansible**. В файле **test.txt**, который лежит в папке **HW-15** показано, что сервер **centralServer** успешно выходит в Интернет через **inetRouter2**, для остальных сервисов основным шлюзом служит **inetRouter**. Также показано, что на сервере **centralServer** успешно развернут **Nginx**, который виден с **inetRouter2**. Сам **Vagrantfile** лежит в папке **HW-15**, **playbooks** и скрипты лежат в папке **HW-15/provisioning**.

 ## Homework 16
 - В первой части задания по **PAM** было настроено ограничение доступа всех пользователям по **SSH** кроме **megaadmin**,принадлежащего группе **admin** в выходные дни с помощью модуля **pam_time.so**. Результаты конфигурации приведены в файле **first part.txt**, лежащего в папке **HW-16**. Во второй части задания были даны привилегии для настройки даты пользователю **megaadmin** с помощью **capability** с именем **cap_sys_time**. Результаты конфигурации приведены в файле **second part.txt**, лежащего в папке **HW-16**

 ## Homework 17
 - В рамках задания по LDAP был использован стенд на базе **inetrouter**, **centralrouter**, **centralserver**. Дополнительно была поднята еще одна виртуальная машина **ipa** в той же сети что и **centralserver** с адресом *192.168.0.3*. На **ipa** был развернут **FreeIPA** сервер, добавлен домен **otus.local**, в который впоследствие были добавлены все машины, настроены зоны для всех серверов, добавлена роль с названием **admin** для возможности выполнения **sudo** команд для пользователей группы **admin**, в которую были добавлены учетные записи **admin**, **marat**. На сервере **ipa** был установлен **ansible** и написан **playbook** с выполнением соответствующих скриптов для настройки **FreeIPA Client** на остальных машинах. В результате выполнения **playbook** на машинах **inetrouter**, **centralrouter**, **centralserver** был установлен **FreeIPA Client** и они были подключены к существущему серверу **ipa**. На сервере **ipa** были сгенерированы ключи и скопированы на машины **inetrouter**, **centralrouter**, **centralserver** с помощью **ssh-copy-id**. Результат успешного подключения через учетную запись **marat** к серверам **inetrouter**, **centralrouter**, **centralserver** показаны в файле **connect.txt**, который находится в папке **HW-17**. Сам **playbook**, **inventory** файл и скрипты выложены в той же папке **HW-17**. Процесс установки, развертывания **FreeIPA** сервера, выполнения **playbook**-а показаны в файле **ipa.otus.local.txt**, который находится в папке **HW-17**. 

 ## Homework 18
 - В рамках задания был написан **playbook** с именем **base_playbook.yml** для конфигурации сервера под управлением **CentOS 7** после первоначальной установки. Данный **playbook** устанавливает базовые пакеты для работы сервера и траблшутинга, создание пользователя и добавление в **sudoers**, добавление ключа для аутентификации, отключение доступа по *SSH* для пользователя **root**. Сам **playbook** лежит в папке **HW-18**. Результаты выполнения **playbook** и авторизация на настроенном сервере приведена в файле **logs.txt**, который лежит как и тестовый файл **inventory** в папке **HW-18**. 
 - Ссылка на **playbook** - *https://github.com/solomon585858/OTUS-Linux-2018-04/blob/HW-18/HW-18/base_playbook.yml*
 - Пример простого **playbook** https://raw.githubusercontent.com/express42/otus-snippets/master/hw-10/clone.yml, который выполняет клонирование **git** репозитория в локальную папку.

 ## Homework 19. Сбор и анализ логов.

 - [x] Основное ДЗ

 #### В процессе сделано:
 - В рамках задания была подготовлена инфраструктура на **Vagrant** и **Ansible**, состоящая из двух виртуальных машин **web** и **log**.
 - На виртуальной машине **log** был развернут **audit** сервер, на виртуальной машине **web** был развернут **nginx** и **audit** клиент, отправляющий логи на сервер при изменении и доступе к файлу **nginx.conf**. Соответствующее правило с ключом **nginxconfigchange** было добавлено в файл **etc/audit/rules.d/audit.rules** на сервере **web**. Логи аудита отправляются только на удаленный сервер. Это было настроено в рамках файла **etc/audit/auditd.conf** на сервере **web**.
 - На виртуальной машине **log** был настроен **rsyslog** сервер, настроен и открыт порт **514** для **TCP** и **UDP**, а также добавлен шаблон, который для всех логов клиентов создает отдельную папку в **var/log/** с соответствующим **HOSTNAME**, внутри которой создает файлы логов для соответствующих программ.
 - На виртуальной машине **web** был настроен **rsyslog** клиент, отправляющий логи с *severity* **crit** и выше на сервер **log** и локально. Соответствующие правила были добавлены в файл **etc/rsyslog.conf** (*.crit  @192.168.255.1:514 и *.crit;mail.none;authpriv.none;cron.none                /var/log/messages). 
 - На виртуальной машине **web** для **nginx** было настроено правило для **access_log**, в рамках которого логи с *severity* **info** и выше при доступе на **nginx** отправляются на сервер **log**. Соответствующее правило было настроено в файле **etc/nginx/nginx.conf** (access_log syslog:server=10.1.100.52,facility=local7,tag=nginx,severity=info main;).
  - На виртуальной машине **web** для **nginx** было настроено правило для **error_log**, в рамках которого логи с *severity* **crit** записываются локально. Соответствующее правило было настроено в файле **etc/nginx/nginx.conf** (error_log /var/log/nginx/error.log crit;).

 #### Как запустить проект:
 - Для запуска инфраструктуры необходимо целиком скачать папку **HW-19** и выполнить команду **vagrant up** внутри нее.

 #### Как проверить работоспособность:
 - Для просмотра логов аудита необходимо внести изменения в файл **etc/nginx/nginx.conf** на сервере **web**. После чего выполнить команду **sudo ausearch -k nginxconfigchange** на сервере **log**.
 - Для просмотра логов с **nginx** необходимо выполнить **curl** запрос с сервера **log** на сервер **web** в виде **curl http://192.168.255.2**. Логи будут записаны в файл **var/log/web/nginx.log**, где **web** - это **HOSTNAME** машины, с которой пришли логи на сервер **log**.

 ## Homework 20. Мониторинг и алертинг.
 - В рамках ДЗ по мониторингу был развернут сервер **Zabbix**, в который был добавлен сервер **LOG** для мониторинга. В **Dashboard** были добавлены четыре графика для мониторинга памяти, процессора, диска и сети. Файл со скриншотом **Dashboard**-а с именем **Marat_Akhmetianov_graphs.png** выложен в папке **HW-20**. Также был настроен **Screen**, в который были добавлены данные графики. Соответствующий **Screen** был добавлен в **favourites**. Файл со скриншотом **Screen**-а с именем **Marat_Akhmetianov_screens.png** выложен в папке **HW-20** 

 ## Homework 21. Настраиваем бэкап.
 - В рамках ДЗ по бэкапу был развернут стенд из трех серверов - **bacula**, **web**, **log**. На сервере **bacula** был развернут **Bacula Server**, сервера **web** и **log** выступают в роли клиентов для **Bacula Server**. На сервере **bacula** были настроены два джоба - **log** и **web**, которые выполняют бэкап по расписанию в течении двух часов с 09:30 до 11:30. В течение этого времении в 09:30 выполняется полный бэкап для каждого из джобов, каждые 10 минут выполняется инкрементальный бэкап, а каждый полчаса дифференциальный бэкап. Настройки клиентов и расписания можно посмотреть в файле **clients.conf**, который лежит в папке **HW-21/server/clients.conf**. Список джобов можно посмотреть в файле **list jobs for log and web.txt**, который лежит в папке **HW-21**. Список файлов для полных бэкапов **web** и **log** можно посмотреть в файлах **list files for job web.txt** и **list files for job log.txt**, которые лежат в папке **HW-21**. Конфиг **bacula-fd** для **log** выложен в папке **HW-21/log/bacula-fd.conf**, для **web** - в папке **HW-21/web/bacula-fd.conf**. Конфиги для **bacula** выложены в папке **HW-21/server**.
 
 ## Homework 22. Защита от DDoS.
 - В рамках ДЗ по защите от DDoS был использован модуль **testcookie-nginx-module**, который работает как быстрый фильтр между ботами и бэкендом во время L7 DDoS атаки. Пример конфигурации для случая когда боты понимают редиректы и cookies представлен в файле **nginx.conf**, который выложен в папке **HW-22**. 
 - Ссылка на модуль на **GitHub** - *https://github.com/kyprizel/testcookie-nginx-module*.

 ## Homework 23. Развернуть базу из дампа и настроить для нее реплику.
 - В рамках ДЗ по репликации базы данных были развернуты два сервера - **mysqlmaster** и **mysqlslave**. На оба сервера был установлен **MySQL**. Сервер **mysqlmaster** был настроен в качестве **master** и на текущем сервере была использвана база данных **bet_odds** из приложенного дампа к ДЗ. Сервер **mysqlslave** был настроен в качестве **slave** и между серверами была настроена репликация с **master** на **slave**. В качестве репликации были указаны следующие таблицы - **bookmaker**, **competition**, **market**, **odds**, **outcome**. Результат **SHOW TABLES** для **master** и **slave** приведен в файлах **mysqlmaster.txt**, **mysqlslave.txt**, которые выложены в папке **HW-23**. Примеры файлы конфигов **my.cnf** для **mysqlmaster** и **mysqlslave** выложены в той же папке в виде файлов **masterconfig.txt** и **slaveconfig.txt**.

 ## Homework 24
 - В рамках первого задания по установке **PostgreSQL** были написаны *playbook-и* с именами **install_postgresql_9.6.yml** и **install_postgresql_10.yml**. Первый *playbook* разворачивает **PostgreSQL** версии **9.6**, второй - **10** версии. Версии были вынесены в сектор **vars** в рамках *playbook-ов*. Сами *playbook-и* и логи установки (файлы **log_install_postgresql_9.6.txt** и **log_install_postgresql_10.txt**) были выложены в папке **HW-24**. В рамках второго задания по настройке репликации для **PostgreSQL** был написан *playbook* для десятой версии с именем **replication_postgresql_10.yml**. Сам *playbook* и логи установки (файл *log_replicate_postgresql_10.txt*) были выложены в папке **HW-24**.

  ## Homework 25. Vagrant стенд  для NFS.

 - [x] Основное ДЗ

 #### В процессе сделано:
 - В рамках задания была подготовлена инфраструктура на **Vagrant** и **Ansible**, состоящая из двух виртуальных машин **nfsserver** и **nfsclient**.
 - На виртуальной машине **nfsserver** был развернут **NFS** сервер, настроены правила **iptables** для доступа со стороны клиента, а также ряд общих правил для запрета другого трафика
 - На виртуальной машине **nfsserver** были созданы директории **var/nfs** и **var/nfs/upload** с соответствующими правами доступа
 - На виртуальной машине **nfsserver** директория **var/nfs** была добавлена в **etc/exports** с указанием сети доступа клиента и правами на запись
 - На виртуальной машине **nfsserver** директория **var/nfs/upload** была добавлена в **etc/exports** с указанием сети доступа клиента и правами на запись
 - На виртуальной машине **nfsclient** был развернут **NFS** клиент и созданы директории **mnt/nfs** и **mnt/upload** для монтирования папок с **NFS** сервера
 - На виртуальной машине **nfsclient** в  **etc/fstab** были прописаны настройки монтирования папок с **NFS** сервера при запуске системы (тип протокола - *UDP*, версия - *3* и т.д.)

 #### Как запустить проект:
 - Для запуска инфраструктуры необходимо целиком скачать папку **HW-25** и выполнить команду **vagrant up** внутри нее.

 #### Как проверить работоспособность:
 - Для тестирования возможности создания и записи файла в подмонтированной директории можно создать файл в папке **mnt/upload** и с помощью редактора **vi** записать что-нибудь в файл