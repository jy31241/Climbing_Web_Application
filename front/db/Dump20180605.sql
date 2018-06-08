-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: climbing
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recruitment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_apply_recruitment1_idx` (`recruitment_id`),
  KEY `fk_apply_user1_idx` (`user_id`),
  CONSTRAINT `fk_apply_recruitment1` FOREIGN KEY (`recruitment_id`) REFERENCES `recruitment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_apply_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (1,1,2);
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `createdDate` date NOT NULL,
  `views` int(11) NOT NULL,
  `recommend` int(11) NOT NULL,
  `boardType_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_board_boardType1_idx` (`boardType_id`),
  KEY `fk_board_user1_idx` (`user_id`),
  KEY `fk_board_region1_idx` (`region_id`),
  CONSTRAINT `fk_board_boardType1` FOREIGN KEY (`boardType_id`) REFERENCES `boardtype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_board_region1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_board_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'글제목입니다','0208-05-26',404,6,1,1,1);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardtype`
--

DROP TABLE IF EXISTS `boardtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boardtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardtype`
--

LOCK TABLES `boardtype` WRITE;
/*!40000 ALTER TABLE `boardtype` DISABLE KEYS */;
INSERT INTO `boardtype` VALUES (1,'reruitment'),(2,'review');
/*!40000 ALTER TABLE `boardtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_user1_idx` (`user_id`),
  CONSTRAINT `fk_comment_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'전현우는 바보다',1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentmatch`
--

DROP TABLE IF EXISTS `commentmatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentmatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_commentMatch_comment1_idx` (`comment_id`),
  KEY `fk_commentMatch_board1_idx` (`board_id`),
  CONSTRAINT `fk_commentMatch_board1` FOREIGN KEY (`board_id`) REFERENCES `board` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_commentMatch_comment1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentmatch`
--

LOCK TABLES `commentmatch` WRITE;
/*!40000 ALTER TABLE `commentmatch` DISABLE KEYS */;
INSERT INTO `commentmatch` VALUES (1,1,1);
/*!40000 ALTER TABLE `commentmatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mountain`
--

DROP TABLE IF EXISTS `mountain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mountain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mntnm` varchar(45) NOT NULL,
  `areanm` varchar(200) NOT NULL,
  `aeatreason` varchar(2000) NOT NULL,
  `etccourse` varchar(2000) NOT NULL,
  `details` varchar(2000) NOT NULL,
  `mntheight` int(11) NOT NULL,
  `tourisminf` varchar(2000) NOT NULL,
  `transport` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mountain`
--

LOCK TABLES `mountain` WRITE;
/*!40000 ALTER TABLE `mountain` DISABLE KEYS */;
INSERT INTO `mountain` VALUES (1,'북한산','서울특별시 강북구ㆍ성북구ㆍ종로구ㆍ은평구, 경기도 고양시ㆍ양주시','최고봉인 백운대를 위시하여 인수봉, 만경대, 노적봉 등 경관이 수려하고 도시민들의 휴식처이며 국립공원으로 지정(1983년)되어 있는 점 등을 고려하여 선정, 북한산성, 우이동계곡, 정릉계곡, 세검정계곡 등이 유명. 도선국사가 창건한 도선사(道詵寺), 태고사(太古寺), 화계사(華溪寺), 문수사(文殊寺), 진관사(津寬寺) 등 수많은 고찰이 있음','① 북한산성 매표소-위문-용암문-대동문-대성문-대남문-가사당암문-북한산성매표소 (총 7시간)<BR>② 구기동-이북5도청-금선사-향로봉-비봉-승가봉-문수봉-대남문-구기동 (총 4시간 20분)<BR>③ 북악터널-형제봉-보현봉-대성문-보국문-대동문-동장대-용암문-백운대-우이동 (총 7시간)','서울의 진산 북한산은 조선조 초기에는 삼각산(三角山)으로 불렀다. 삼각산이란 이름은 〈신증동국여지승람〉에 \'삼각산은 양주의 경계에 있다. 일명 화산(華山)이라 하고, 신라시대에는 부아악(負兒岳)이라고 불렀다.<BR>이 산은 경성(京城)의 진산으로 동명왕의 아들 온조가 한산(漢山)에 이르러 부아악에 올라가서 살 만한 곳을 살폈다\'는 기록이 있으며, \'백운봉 (白雲峰, 지금의 백운대), 인수봉 (仁壽峰), 만경봉 (萬景峰,지금의 만경대)등 세 봉우리가 있으므로 그렇게 이름한 것이다\'라고 유래를 기록하고 있다. 북한산성에 대해서는 〈신증동국여지승람〉과 〈북한지〉에 상세히 기록되어 있다. 북한산성은 백제 온조왕이 터를 잡았고 그후 개루왕 때 성터를 쌓았다는 기록이 있으며, 조선시대에 임진왜란, 병자호란을 치른 뒤 숙종 37년(1711년)에 시작하여, 6개월 만인 그해 10월에 완공하였다 한다. <BR>북한산성은 험한 산세를 이용하여 정상을 기점으로 서쪽 산자락부터 원효봉, 염초봉, 백운대, 만경대, 용암봉, 문수봉, 나한봉, 나월봉, 용출봉, 의상봉까지 연결하여 쌓은 산성으로 총 길이가 10km에 달한다. 당시 산성에는 14개의 성문을 냈는데, 산성의 정문 격인 대서문을 중심으로 북쪽으로 수문, 서암문(시구문), 북문, 백운대를 지나 위문, 용암문, 대동문, 보국문, 대성문, 대남문, 청수동암문, 대서문에서 북서쪽으로 이어지는 산성에는, 부황동암문, 가사동암문이 설치되었다.<BR>현재는 대부분 성문을 복원하였다. 북한산에 수많은 등산로 거미줄 같이 얽혀 있어 산행시 주의를 요하는 곳이다. 북한산의 산행 들머리는 대표적으로 여섯 군데를 꼽고 있다. 우이동 기점, 4.19탑 기점, 정릉 기점, 세검정 기점, 불광동 기점, 구파발 북한산성 기점으로 구분할 수 있다.',836,'● 숙식 및 기타 정보<BR>각 코스별 들머리 부근에 숙식할 곳이 많으며 인수산장 위에는 야영장이 있다.<BR><BR>● 이용문의<BR>북한산국립공원 관리사무소 ☎02-909-0497','지하철 3호선과 4호선이다. 우이동은 4호선 수유역에서 내려 101번, 1217번, 북악터널은 길음역에서 7211번을 타고 국민대에서 내린다. 구기동은 3호선과 6호선 불광역에서 7022번과 7211번, 북한산성은 구파발역에서 704번을 탄다.<BR>&gt; 수유역→우이동 : 5분 간격 운행 <BR>&gt; 불광역→구기터널 : 5분 간격 운행.<BR>&gt; 구파발→산성매표소 : 5분 간격 운행'),(2,'설악산','강원도 속초시 설악동, 인제군 북면ㆍ인제읍, 양양군 서면ㆍ강현면','남한에서 세 번째로 높은 봉우리인 한계령, 마등령, 미시령 등 수많은 고개와 산줄기 계곡들이 어우러져 한국을 대표하는 산악미의 극치를 이루고 있으며, 국립공원(1970년 지정) 및 유네스코의 생물권 보존지역으로 지정(1982년)되어 관리되고 있는 점 등을 고려하여 선정, 백담사(百潭寺), 봉정암(鳳頂菴), 신흥사(新興寺), 계조암(繼祖菴), 오세암(五歲庵), 흔들바위, 토왕성폭포, 대승폭포 등이 특히 유명','① 설악동-비선대-마등령-공룡능선-희운각-소청-설악산장 (총 11시간)<BR>② 용대리-백담사-수렴동대피소-쌍폭-봉정암-소청-설악산장 (총 8시간)<BR>③ 남교리-탕수동-대승령-귀청-한계령 갈림길-설악산장 (총 13시간 30분)','설악산은 한라산(1,947.3m),지리산(1,915.4m)에 이어 남한에서 세 번째로 높은 산으로 강원도 속초시와 양양군,인제군에 걸쳐 있다.<BR>옛 문헌을 보면 지금의 대청봉이 있는 양양, 속초의 산만을 `설악\'이라 제한하였고 귀때기청봉이 있는 인제쪽의 산을 `한계산\'이라 따로 지칭했다. 그 예로 안산 남쪽 장수대 부근에 있는 한계산성이 이를 뒷받침하고 있다. 진부령에서 대청봉까지 이어지는 북주능의 백미는 뭐니뭐니 해도 수많은 암봉들로 구성된 공룡능선인데 이 코스가 바로 북주능의 등뼈 역할을 하는 공룡능선을 가장 짧은 시간에 주파할 수 있는 길이다. 이 능선은 1963년 겨울, 당시 한국의 암벽등반 선구자이던 선우증옥, 정규현, 채태웅씨 등이 처음으로 완등한 이후 산악인들로부터 각광을 받다가 최근엔 일반인들도 쉽게 할 수 있을 만큼 등산로가 잘 닦여있다. <BR>백두산에서 남쪽으로 내리뻗어 이 땅의 기나긴 등뼈를 이루는 백두대간의 허리를 받들고 있는 설악산은 북의 금강산과 남의 오대산 사이에 솟아있는 천하의 명산으로 우리나라 관광명소 1호로 꼽힌다. 지난 1965년 11월 5일 천연기념물지구(163.4㎞), `69년 관광지(16.2㎞) 그리고 \'70년에는 국립공원(174㎞)으로 각각 지정되었다. 그리고 1971년 9월에는 설악산 국립공원 관리사무소가 개설 되었고 `77년 \'78년 두차례에 걸쳐 354.6㎞로 확장되었으며, 그 후 다시 374㎞로 넓이를 확대하였다. 울산암 등산로 초입에 있는 신흥사는 대한불교 조계종 제3교구 본사로 설악산의 대표적 사찰이다. 신라때 자장율사가 노루목근처에 향성사로 창건했다가 조선조때 현위치에 다시 세웠다고 한다.',1708,'● 숙식 및 기타정보<BR>설악동지구, 백담지구, 오색지구에 숙박시설이 즐비하다. 특히 설악동에는 특급호텔에서 길거리 호객 민박집에 이르기까지 다양한 숙박업소가 있으며 C지구에는 오토캠핑이 가능한 넓은 야영장도 있다. <BR>호텔 설악파크 ☎033-636-7711, 설악크리스탈모텔 ☎033-636-7626, 설악산민박 ☎033-635-4231 오색그린야드호텔(모텔) ☎033-672-8500 오색온천장 ☎033-672-3635 용대리 강풍경파크 ☎033-462-9225 델리파크 ☎033-462-6647 남교리 용아민박 ☎033-462-6399<BR><BR>● 이용문의<BR>설악산국립공원 관리사무소 ☎033-636-7700','기점은 속초다. <BR>서울 동서울종합터미널과 강남고속버스터미널에서 고속버스가 30분 간격으로 있고 심야버스도 두 편 있다. <BR>속초로 시외버스가 다니는 도시는 부산, 대구, 광주, 대전, 울산, 수원, 성남, 춘천, 안산, 일산, 의정부, 충주, 태백, 포천 등이다. <BR>내설악 방면은 동서울동합터미널이나 상봉터미널에서 홍천 경유 직행을 이용한다. <BR>- 속초→설악동: 7번, 7-1번 시내버스 10분 간격 운행'),(3,'지리산','전라북도 남원시, 전라남도 구례군, 경상남도 하동군ㆍ산청군ㆍ함양군','신라 5악중 남악으로 남한 내륙의 최고봉인 천왕봉(1,915.4m)을 주봉으로 노고단(1,507m), 반야봉(1,731.8m) 등 동서로 100여리의 거대한 산악군을 이뤄 \"지리산 12동천\"을 형성하는 등 경관이 뛰어나고 우리나라 최대의 자연생태계 보고이며 국립공원 제1호로 지정(1967년)된 점 등을 고려하여 선정, 어리석은 사람이 머물면 지혜로운 사람으로 달라진다고 한데서 산이름이 유래.화엄사, 천은사, 연곡사, 쌍계사 등이 유명','① 중산리-칼바위-망바위-법계사(로타리대피소)-천왕샘-천왕봉-중산리(총 8시간)<BR>② 성삼재-노고단-임걸령-노루목-반야봉-화개재-뱀사골-반선(총 7시간 30분)<BR>③ 거림-세석대피소-연하봉-제석봉-천왕봉-중산리(총 9시간)','명산일수록 숱한 이름속에 둘러쌓여 있기 마련이다. 예로부터 지리산은 백두대간의 맥이 크게 끝나는 곳으로 \'택리지\'에서는 두류산이라고 하였으며 진시황 시절 삼신산의 하나로 \'방장산\'이란 이름을 쓰기도 했다. 그리고 \'지이산\'은 \'지혜가 다른 산\' \'천재지변을 미리 아는 지혜 있는 산\'이라 표현하는 등 이름의 숱한 전설이 스며 있다. <BR><BR>「금강산은 빼어나되 웅장하지 못하고, 지리산은 웅장하되 빼어나지 못하고」라는 서산대사의 비유가 있듯 지리산은 날카롭고 빼어남은 부족하나 웅장하고 두리뭉실한 기운이 돋보인다. 행정구역상 경남 산청군 시천면 중산리 山 208번지에 소재한 천왕봉(1,915.4m)을 주봉으로 반야봉(1,731.8m), 노고단(1,507m)이 대표적이며, 천왕봉에서 노고단을 잇는 100리 능선에는 1천 5백미터가 넘는 고봉이 10개, 1천미터가 넘는 봉우리가 20여개나 있을 정도로 높고 크다. 평평한 고원지대도 많이 발달해 야생화나 철쭉 등이 장관을 이루기도 한다. 산세가 험하지 않으면서 봉우리가 80개에 달하다보니 봉우리 사이로 계곡이 발달했다. <BR><BR>계곡물이 많고 경사도가 심하지 않는 특징이 있다. 중산리계곡, 대원사계곡, 거림계곡, 장당계곡, 뱀사골계곡, 화엄사계곡, 심원계곡, 피아골계곡, 한신(백무동)계곡, 칠선계곡 등 유명 계곡만도 20여개가 있다.',1915,'● 숙식 및 기타정보<BR>지리산 일대에는 별미가 많으니 맛집부터 찾아본다. 화엄사로 들어가는 길목의 남악가든(☎061-782-2715)은 오리전문점으로 정평이 나있다. 쌍계사 입구 화개에서는 섬진강의 참게와 재첩국, 은어튀김을 꼭 맛봐야한다. 태봉식당(☎055-883-2466) 동흥식당(☎055-883-8333) 뱀사골에는 청정 산나물로 만든 산채비빔밥과 닭백숙이 유명한 청송가든(☎063-636-3563)이 있다.<BR>산기슭의 잘 곳은 구례쪽을 제외하고는 다 민박이다. 화엄사 주변에는 지리산프라자호텔 ☎061-782-2171 화엄각여관 ☎061-782-0997 쌍계사쪽은 쌍계별장 ☎055-883-1665 섬진강식당 ☎055-883-2345 중산리는 천왕봉의 집 ☎055-972-1155 두류산장 ☎055-972-1289 백무동은 백무산장휴게소 ☎055-962-5211 참샘집 ☎055-962-5332 <BR><BR>● 이용문의<BR>지리산국립공원 동부관리사무소 ☎055-942-7771~2 남부관리사무소 ☎061-783-9100~1 북부관리사무소 ☎063-625-8911~2','기점은 구례, 진주, 함양이다. 구례에서 화엄사행 버스는 수시로 있으며 쌍계사행은 13회, 성삼재행은 8회 있다. 진주에서 중산리행은 16회, 함양에서 백무동행은 18회 있다. 구례는 하루 13회(용산발 기준) 다니는 전라선 열차를 이용하는 것이 좋으며 진주나 함양으로는 버스가 편하다. 진주는 서울 남부터미널에서 우등버스가 30분 간격(심야 3회), 부산 노포동터미널에서 20분 간격, 대구 서부정류장에서 45분 간격, 대전 동부터미널에서 한 시간 간격으로 다닌다. <BR><BR>인천, 청주, 울산, 전주, 광주, 여수에서도 버스가 있다. 함양으로는 동서울터미널에서 12회(심야 2회), 남부터미널에서 8회 운행한다. 부산에서는 15분, 대구에서는 30분 간격으로 다니며 인천, 수원, 광주, 전주에서도 버스가 있다.'),(4,'속리산','경상북도 상주시 화북면, 충청북도 보은군 내속리면','예로부터 산세가 수려하여 제2금강 또는 소금강이라고도 불리울 정도로 경관이 아름답고 망개나무, 미선나무 등 1,000여 종이 넘는 동식물이 서식하고 있으며, 국립공원으로 지정(1970년)된 점 등을 고려하여 선정, 법주사(法住寺), 문장대, 천연기념물 제103호인 정이품송(正二品松) 및 천연기념물 제207호인 망개나무가 유명','① 법주사-문장대-신선대-세심정 삼거리-법주사 (총 5시간)<BR>② 법주사-삼거리-신선대-비로봉-상환암-세심정 삼거리-법주사 (총 4시간 50분)<BR>③ 시어동매표소-문장대-중사자암-법주사 (총 5시간 10분)','한반도의 등줄기인 백두대간(白頭大幹)과 서해바다까지 뻗어 나간 한남금북정맥(漢南錦北正脈)의 분기점에 솟아 올라 조선팔경의 하나이자 소금강, 또는 제 2의 금강이라 불리는 속리산(1,058.4m)은 행정구역상으로는 충북 보은과 경북 상주에 걸쳐 있는 명산이다.',1058,'● 숙식 및 기타정보<BR>속리산관광마을에 숙식할 곳이 많다. <BR>속리산관광호텔 ☎043-542-5181, 한일장 ☎043-543-1100<BR>송림여관 ☎043-543-3911, 청운장 ☎043-543-3906<BR>말티재자연휴양림 ☎043-543-1667, 경희식당 ☎043-543-3736<BR>청강식당 ☎043-542-5081<BR><BR>● 이용문의<BR>속리산사무소 ☎043-542-5267~8','기점은 보은이나 청주다. <BR>- 보은(☎043-543-1580)에서 속리산은 07:20~21:30, 10분 간격 군내버스 운행. 20분 소요.<BR>- 청주(☎043-234-6543)에서 속리산은 보은을 거쳐 06:30~20:40 1일 29회 시외버스 운행. 1시간 50분 소요'),(5,'오대산','강원도 평창군 진부면, 홍천군 내면, 강릉시 연곡면','국내 제일의 산림지대를 이루고 있으며, 경관이 수려하여 국립공원으로 지정(1975년)된 점 등을 고려하여 선정, 연꽃모양으로 둘러선 다섯 개의 봉우리가 모두 모나지 않고 평평한 대지를 이루고 있는데서 산이름이 유래. 월정사(月精寺), 적멸보궁(寂滅寶宮), 상원사(上院寺)가 있음. 골짜기마다 사찰, 암자 등 많은 불교유적이 산재해 있는 등 우리나라 최고의 불교 성지로 유명','① 상원사-비로봉-상왕봉-두로봉-동대산-진고개산장 (총 10시간 30분, 동대산-진고개 2006년부터 2010년까지 자연휴식년제 실시)<BR>② 방아다리 약수-비로봉-상원사 (총 7시간)<BR>③ 진고개-노인봉-낙영폭포-만물상-구룡폭포-청학산장-소금강 주차장 (총 5시간 30분)','울창한 숲과 이름난 사찰, 약수, 유적지 등이 산재해 있어 관광객과 등산객으로 늘 붐비는 오대산은 강원도 평창군 진부면과 도암면, 홍천군 내면, 강릉시 연곡면의 오대산국립공원의 서부지구에 위치해 있다. 특히 짧은 산행이지만 유서깊은 사찰과 암자를 곳곳에서 볼 수 있는 상원사와 적멸보궁, 정상인 비로봉을 거쳐 미륵암으로 하산하는 코스가 가장 유명하다. 상원사는 6·25때 한암이라는 승려의 산화로 아군의 전략상 소실될 뻔 하였던 위기를 피해 현재까지 그 형태를 보존하고 있는 사찰이다. 국보 36호인 동종이 있으며 신라시대 자장법사에 의해 창건되었다.<BR><BR>예로부터 금강산, 한라산, 지리산과 더불어 국내 제일의 명산으로 알려져 온 오대산은 골짜기마다 아름드리 나무가 숲을 이루고 있어 남한 최대의 수림을 자랑하다. 또한 강원도 일대의 산들이 대부분 기암괴석으로 이루어진 것과는 토산으로 이루어져 있어 한국산의 전형을 보여준다. <BR><BR>높이로 본다면 비로봉은 오대산의 최고봉이자 이 산의 정상이라 할 수 있다. 백두대간의 주맥이 설악에서 이어져 두로봉과 동대산으로 연결되는 서쪽 일대에 자리하고 있는 오대산은 명산으로 이름이 난 만큼 유서깊은 사찰과 암자들이 많다. 또한 산에 관련된 신비로운 전설들이 많이 전해 내려오고 있어 오대산의 명성을 더하고 있다. <BR>오대산의 다섯 봉우리는 호령봉, 비로봉, 상왕봉, 두로봉, 동대산이다. 이 다섯 봉우리중 비로봉이 제일 높은 봉우리이고 그 다음이 호령봉이다.',1565,'● 숙식 및 기타정보<BR>소금강지구와 월정사지구 일대를 중심으로 숙박시설이 많다. <BR>야영장으로는 월정사지구에 동피골야영장 ☎033-332-6417, 소금강지구에 오토캠핑장 ☎033-661-4101이 있다.<BR>월정사지구-오대산호텔 ☎033-330-5000, 휘닉스파크 ☎033-332-6818, 소금강지구-언덕의 집 ☎033-661-4422, 무릉산장 ☎033-661-4132<BR><BR>● 이용문의<BR>오대산국립공원 관리사무소 ☎033-332-6417, (평창지역)평창국유림관리소 ☎033-333-2275, 평창군청 문화관광과 ☎033-330-2752 용평면사무소 ☎033-330-2606 (홍천지역)홍천군 내면사무소 ☎033-432-6003','월정사지구의 기점은 진부(진부시내버스터미널 ☎033-335-6963)이고 소금강지구는 강릉(강릉시외버스터미널 동진버스 ☎033-653-8012, 동해상사 ☎033-653-0320)이다. <BR>진고개로 다니는 시내?시외버스는 모두 없으므로 승용차, 택시를 이용해야 한다. 소금강 분소에서 진고개까지 약 35분 걸린다.<BR>- 진부→월정사 : 1시간 간격 운행<BR>- 진부→상원사 : 월정사행 버스 중 7:30~17:20 시간 버스 운행<BR>- 강릉→소금강 : 303번 버스 종점 하차'),(6,'계룡산','대전광역시, 충청남도 공주시 계룡면ㆍ논산시 상월면ㆍ계룡시 신도안면','예로부터 신라 5악의 하나인 서악(西岳)으로 지칭되었고, 조선시대에는 3악 중 중악(中岳)으로 불리운 산으로서 국립공원으로 지정(1968년)된 점 등을 고려하여 선정산 능선이 마치 닭의 벼슬을 쓴 용의 모습과 닮았다고 하여 계룡산이라는 이름이 유래되었으며, \"정감록(鄭鑑錄)\"에 언급된 십승지지(十勝之地)중 하나임. 신라 성덕왕 2년(724년) 회의화상이 창건한 동학사(東鶴寺)와 백제 구이신왕(420년)때 고구려의 아도화상에 의하여 창건된 갑사(甲寺)등이 유명','① 갑사-연천봉-관음봉-삼불봉-남매탑-큰배재-상신리(총 4시간 40분) <BR>② 동학사-은선폭포-관음봉-삼불봉-신선봉-장군봉-박정자 삼거리(총 9시간 40분)<BR>③ 신원사-고왕암-연천봉-삼불봉-남매탑-동학사(총 3시간 10분)','계룡산은 백두대간에서 갈라져나온 금남정맥의 한 줄기를 이루는 산으로, 충남 공주시와 논산시의 경계를 이루고 있다. 산세가 마치 닭의 벼슬을 쓴 용의 형상을 했다고 해서 계룡산으로 불리게 되었다고 한다.<BR>계룡산은 조선조 초기에 씌어진 예언서인 〈정감록〉의 `왕도입지설\'로 유명한 산으로,정상인 천황봉(天皇峰)을 중심으로 쌀개봉(830.6m), 관음봉(765.8m), 문필봉(735.6m), 삼불봉(777.1m), 연천봉(742.9m)이 주능선에 줄지어 솟아 있다. 계룡산 산자락 곳곳에 문화 유적이 산재해 있는데, 동북쪽에는 동학사가,서북쪽에는 갑사가,서남쪽에는 신원사 사찰이 자리잡고 있다. 특히 갑사에는 보물 제257호인 부도(浮屠)와 보물 제256호인 철당간 및 지주.보물 제478호인 동종(銅鐘)등의 문화재가 있으며, 〈월인석보〉를 찍어낸 목판도 소장되어 있다. 〈월인석보〉는 세종29년(1447년)에 간행된 〈석보상절〉과 세종 31년에 간행된 〈월인천강지곡〉을 합편하여, 세조가 1459년에 간행한 것이다. <BR>상봉을 중심으로 동쪽에 동학사, 서쪽에 갑사, 남쪽에 신원사가 자리하여 현재까지도 보존되고 북쪽의 구룡사는 절터만 남아 있다. 계룡사에는 노루, 담비, 청설모, 황매화 등 희귀 동.식물 1227종이 서식하고 있으며, 계룡 8경으로 꼽히는 천황봉(일출), 삼불봉(설화), 연천봉(낙조), 관음봉(한운), 동학계곡(신록), 은선폭포(운무), 갑사계곡(단풍), 남매탑(명월) 등은 울창한 숲과 기암절벽을 더불어 장관을 이루고 있다.',847,'● 숙식 및 기타 정보<BR>갑사, 동학사, 신원사 입구에 숙식할 곳이 많다. <BR>갑사쪽 중장리에는 계룡산갑사유스호스텔 ☎041-856-4666, 갑사민박 ☎041-857-3234<BR>동학사쪽 학봉리에는 계룡산장여관 ☎041-825-4019, 궁전모텔 ☎041-825-7840<BR>신원사쪽 양화리에는 신원장여관 ☎041-852-4405<BR><BR>● 이용문의<BR>계룡산국립공원 관리사무소 ☎042-825-3002<BR>','기점은 공주와 대전이다. 교통입지로 성장한 대전은 설명할 필요가 없을 것이고 공주로는 동서울터미널에서 30분 간격, 남부터미널에서 52회나 다닌다. 이 외에 인천, 대전, 수원, 성남, 청주, 원주와 충남 각지에서 직행버스를 탈 수 있다. <BR>&gt; 대전→갑사, 동학사 : 수시로 운행 , <BR>&gt; 공주-&gt;갑사, 신원사: 수시로 운행'),(7,'한라산','제주도 제주시, 서귀포시','남한에서 가장 높은 우리나라 3대 영산의 하나로 산마루에는 분화구인 백록담이 있고 1,800여종의 식물과 울창한 자연림 등 고산식물의 보고이며 국립공원으로 지정(1970년)된 점 등을 고려하여 선정, 남한의 최고봉으로서 백록담, 탐라계곡, 안덕계곡, 왕관릉, 성판암, 천지연 등이 유명','① 어리목광장-사제비동산-만세동산-윗세오름(총 2시간 소요)<BR>② 1100도로-영실매표소-영실휴게소-병풍바위-윗세오름(총 3시간 소요)<BR>③ 어리목광장-어승생악(총 1시간 소요)','한라산은 우리나라 최남단에 위치해 있으면서 남한에서 가장 높은 산이다. 해발 1950m, 면적 151.35㎢ 로 1970년 3월 24일 국립공원으로 지정된 이 산은 3대 영산중의 하나로 다양한 식생분포를 이뤄 학술적 가치가 높은 동식물의 보고이기도 하다.',1947,'● 숙식 및 기타정보<BR>제주나 서귀포에 숙박시설이 많이 있다. 시내에서 숙식한 후 산을 오르도록 한다.<BR><BR>● 이용문의<BR>한라산국립공원 관리사무소 ☎064-713-9950','제주시외버스터미널이 기점이다. 이곳에서 각 들머리로 가는 버스가 많이 있다.<BR>&gt; 제주시외버스터미널→성판악, 서귀포 방면 15분 간격 <BR>&gt; 제주시외버스터미널→영실, 어리목: 중문방면 80분 간격 <BR>&gt; 제주시외버스터미널-&gt;관음사, 정기노선없음'),(8,'덕유산','전라북도 무주군ㆍ장수군, 경상남도 거창군ㆍ함양군','향적봉에서 남덕유까지 17km의 장대한 산줄기를 이루고 있으며, 금강과 낙동강의 수원(水源)이고 국립공원으로 지정(1975년)된 점 등을 고려하여 선정, 덕유산 북쪽으로 흘러 내리는 30여km의 무주구천동계곡(茂朱九千洞溪谷)과 자연휴양림, 신라 흥덕왕5년(830년) 무염국사가 창건한 백련사(白蓮社) 등이 유명','① 삼공리-칠봉-향적봉-중봉-오수자굴-백련사-삼공리(총 5시간 20분)<BR>② 송계사-귀봉-백암봉-중봉-향적봉-백련사-삼공리(총 4시간 40분)<BR>③ 명천리-삿갓골재-월성재-남덕유산-영각사(총 5시간 45분)','덕유산은 전북 무주군과 장수군, 경남 거창군과 함양군의 경계를 이루며, 2도 4군 8개면에 걸쳐있다. 한라산.지리산.설악산에 이어 남한에서 4번째로 높고 1000미터 이상의 봉우리가 20개도 넘는 거대한 산이다. <BR>덕유라는 이름은 덕이 있고 크며 넉넉한 산의 모습을 나타낸 말이다. 무학대사가 골치아픈 정권에서 벗어나 첩첩산중 경치 아름다운 산을 물색하다가 발견했다는 산이 바로 덕유산이다.',1614,'● 숙식 및 기타정보<BR>무주리조트(☎063-322-9000)와 덕유산자연휴양림(☎063-322-1097)이 안성마춤이다.<BR>주릉에서는 삿갓재대피소(☎011-423-1452)와 향적봉대피소(☎063-322-1614)를 이용한다. <BR><BR>● 이용문의<BR>덕유산국립공원 관리사무소 ☎063-322-3174~5','기점은 무주다. 구천동 가는 버스가 20분 간격으로 운행한다. 무주행은 경부선 연계편이 좋으니 대전에서는 54회, 영동에서는 32회나 다닌다. 서울 남부터미널에서는 고속버스가 5회 다니며 대구, 광주, 청주에서도 버스가 있다. <BR>동남쪽 산행 들날머리인 송계사·병곡·산수·황점행 버스는 거창에서 9회, 3회, 3회, 6회 있다. 거창으로는 동서울터미널에서 8회, 남부터미널에서 14회(심야 2회) 다닌다. 경남 이외의 도시로는 대구, 인천, 광주, 대전, 전주, 김천에서 버스가 있다. <BR>가장 남쪽의 영각사 방면으로는 함양에서 군내버스가 6회 다닌다. 함양으로는 직통버스가 동서울터미널에서 10회, 남부터미널에서 10회(심야 2회) 있다. 경남 이외의 도시로는 대구, 인천, 광주, 대전, 수원, 전주, 김천에서 버스가 다닌다.'),(9,'내장산','전라북도 정읍시 내장동, 순창군 복흥면ㆍ쌍치면','기암괴석과 울창한 산림, 맑은 계류가 어울어진 호남 5대 명산의 하나로 국립공원으로 지정(1971년)되어 있는 점 등을 고려하여 선정, 내장사를 중심으로 서래봉에서 불출봉, 연지봉, 까치봉, 신선봉, 장군봉에 이르기까지 산줄기가 말발굽처럼 둘러쳐져 마치 철옹성 같은 특이지형을 이룸. 내장사(內藏寺) 부속암자인 원적암 일대에 있는 비자림(천연기념물 제153호)이 특히 유명','① 내장사-벽련암-서래봉-불출봉-원적암-내장사(총 3시간 40분)<BR>② 내장사-원적암-망해봉-연지봉-까치봉-신선봉(정상)-내장사(총 4시간 40분)<BR>③ 일주문-벽련암-서래봉-불출봉-망해봉-연지봉-까치봉-신선봉(정상)-연자봉-장군봉-유군치-내장사 진입도로(총 7시간 30분)','그 산 밖에서 볼 수 없는 천하의 명승을 그 산의 내부에 숨기고 있다\' 는 뜻의 이름을 지닌 내장산. 기암절벽, 계곡, 폭포와 단풍 등 산이 갖춰야 할 품세를 빠짐없이 갖춘 천혜의 가을산이다. <BR>내장산은 전북 정읍시와 순창군의 경계를 이루는 산으로 천하 제일의 단풍 명소로 손꼽히고 있다. 내장사 경내에 있는 정혜루기에 의하면 내장산은 구례의 지리산, 영암의 월출산, 장흥의 천관산, 부안의 능가산(변산)과 더불어 호남의 5대 명산의 하나로 기록돼 있다. <BR>말발굽 형태로 이루어진 능선에 기기묘묘하게 솟은 기암절벽과 울창한 단풍숲이 어우러져 가을철이면 단풍 산행지로 각광을 받고 있다.',764,'● 숙식 및 기타정보<BR>내장산 집단시설지구에 관광호텔과 여관이 많다. <BR>봉림산장 ☎063-538-9763, 사랑방모텔 ☎063-538-8183, 그린토피아 ☎063-538-9763. 빗재 아래 있는 야영장을 이용해도 좋다. <BR><BR>● 이용문의 <BR>내장산국립공원 관리사무소 ☎063-538-7875','기점은 정읍이다. 정읍으로는 호남선 KTX가 19회, 일반열차는 20회 다닌다. 고속버스는 동서울터미널에서 60회, 강남터미널에서 40분 간격이며 심야버스도 한 편 있다. 정읍행 버스편이 있는 데는 부산, 인천, 부천, 성남, 안산, 안양, 광주, 목포와 전라북도 도시들이다. 내장사행 버스는 정읍시내버스터미널과 정읍역에서 타면 된다. <BR>&gt; 정읍→내장사 : 20분 간격 운행'),(10,'가야산','경상남도 합천군ㆍ거창군, 경상북도 성주군','예로부터 우리나라의 12대 명산 또는 8경에 속하는 산으로서 72년 국립공원으로 지정되었으며, 특히 95년 세계문화유산으로 지정된 국보 팔만대장경과 해인사가 있는 등 역사·문화적 가치가 높은 점을 고려하여 선정,`가야국\"이 있었던 곳으로 전해지며, `택리지\"에서는 가야산의 기암괴봉을 불꽃에 비유하여 석화성(石火星)이라 하였음. 산위에서의 조망이 좋고, 특히 용문폭포와 홍류동 계곡 등이 유명','① 청량동-청량사-남산제일봉-단지봉-큰재(1박)-마령-깃대봉-두리봉(2박)-정상-서장대-백련암 (총 3박4일)<BR>② 치인리-(30분)-용탑선원-(50분)-마애불-(20분)-토신골 삼거리-(1시간)-정상-(1시간)-서장대-(1시간 10분)-심원골 매표소 (총 4시간 50분)<BR>③ 청량동-(50분)-청량사-(20분)-능선삼거리-(1시간 20분)-남산제일봉-(1시간)-치인리 (총 3시간 30분)','가야산은 경남 합천군 가야면과 거창군 가북면, 경북 성주군 가천면 수륜면을 한몸에 품고있다. 우리나라 12대 명산중의 하나로 산세가 천하에서 으뜸이고, 지덕은 해동에서 제일이라 하여, 대한 8경에 속하는 명산이다. 가야산 지역이 옛날 가야국이 있었던 곳이고 이 산이 가야국에서 가장 높고 훌륭한 산이었기 때문에 자연스럽게 가야의 산이라 불렀다고 한다. <BR><BR>가야산은 소머리 같다 해서 우두산(산 머리의 큰 바위 아래에 소의 코라는 뜻의 우비정이란 샘도 있다) 이라는 이름외에 상왕산, 설산, 중향산 등으로도 불리워졌다. \'택리지\'에 기암괴봉을 불꽃에 비유하여 석화성(石火星)이라고 하였는데, 가야산은 보는 방향에 따라서 한송이 연꽃으로도 보였다가 서쪽으로 겹겹이 솟은 산봉우리 사이사이 또는 골짜기에 하얀구름이 잠기면 많은 섬이 떠 있는 바다가 된다.<BR><BR>해발 1천m가 넘는 고봉들이 불꽃처럼 솟아 있는 자태하며, 북에서 남으로 이르는 장쾌한 대덕유의 줄기와 아스라히 떠오른 구름위로 지리산을 볼 수 있는 조망, 홍류동천의 아름다운 계곡 등 장중하고 덕성스러운 모습을 곳곳에서 볼 수 있다.가야산 고스락에 서면 금오산, 팔공산, 비슬산이 보이고 화왕산, 자굴산이 보이는가 하면 가까이에 두무산, 오도산, 비계산, 조금 멀리에 백운산, 수도산, 대덕산 등이 보인다.<BR><BR>여기에 우리나라 3보 사찰중 하나인 해인사가 들어서고, 조선시대 때 강화도에서 팔만대장경을 옮겨온 이후 불교의 성지로 자리메김하였다. 근래에는 백련암에서 수도했던 성철 스님으로 인하여 더욱 유명해졌다.',1433,'● 숙식 및 기타정보<BR>숙박시설은 치인리에 많고 백운리에는 거의 없다. <BR>해인사관광호텔 ☎063-582-7281<BR>은성장여관 ☎063-581-4644<BR>88장여관 ☎063-582-7651<BR>백운리 가야산국민호텔 ☎063-581-2064<BR><BR><BR>● 이용문의<BR>가야산국립공원 관리사무소 ☎055-932-7810','대구가 기점이다. <BR>대구 대명11동에 있는 서부시외버스정류장에서 직행버스가 40회 있다.');
/*!40000 ALTER TABLE `mountain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruitment`
--

DROP TABLE IF EXISTS `recruitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mountian_id` int(11) NOT NULL,
  `boardType_id` int(11) NOT NULL,
  `maxNum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recruitment_mountian1_idx` (`mountian_id`),
  KEY `fk_recruitment_boardType1_idx` (`boardType_id`),
  CONSTRAINT `fk_recruitment_boardType1` FOREIGN KEY (`boardType_id`) REFERENCES `boardtype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recruitment_mountian1` FOREIGN KEY (`mountian_id`) REFERENCES `mountain` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruitment`
--

LOCK TABLES `recruitment` WRITE;
/*!40000 ALTER TABLE `recruitment` DISABLE KEYS */;
INSERT INTO `recruitment` VALUES (1,1,1,2);
/*!40000 ALTER TABLE `recruitment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regionName` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'서울'),(2,'경기/인천'),(3,'충청도'),(4,'강원도'),(5,'경상도'),(6,'전라도'),(7,'제주도');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mountian_id` int(11) NOT NULL,
  `boardType_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_review_mountian_idx` (`mountian_id`),
  KEY `fk_review_boardType1_idx` (`boardType_id`),
  CONSTRAINT `fk_review_boardType1` FOREIGN KEY (`boardType_id`) REFERENCES `boardtype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_review_mountian` FOREIGN KEY (`mountian_id`) REFERENCES `mountain` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userType_id` int(11) NOT NULL,
  `userId` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `grade` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nickName` varchar(45) NOT NULL,
  `signupDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_userType1_idx` (`userType_id`),
  CONSTRAINT `fk_user_userType1` FOREIGN KEY (`userType_id`) REFERENCES `usertype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,2,'jy31241','pass123',1,'pjya0321@naver.com','jyp123','2018-05-26'),(2,2,'abc123','pass123',2,'abc@gmail.com','abc456','2018-04-12');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-05 22:19:24
