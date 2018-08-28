CREATE TABLE `도소매_가을배추` AS
SELECT A.`year`, 
			A.`week`,
      ifNULL(SUM(A.도매가격),'NULL') AS 도매가격,
			ifNULL(SUM(A.전국반입량),'NULL') AS 전국반입량,
			ifNULL(SUM(A.단위당_수확량),'NULL') AS 단위당수확량,
			ifNULL(SUM(A.재배면적),'NULL') AS 재배면적,
			IFNULL(SUM(A.생산량_당해년),'NULL') AS 생산량_당해년,
			ifNULL(SUM(A.생산량_전년도),'NULL') AS 생산량_전년도
FROM `가을배추_도소매_2931_2010-2017_2018081` AS A
GROUP BY A.`year`, A.`week`
ORDER BY A.`year`, A.`week`;  



CREATE TABLE `도소매_절임배추` AS
SELECT A.`year`, 
			A.`week`,
      ifNULL(SUM(A.도매가격),'NULL') AS 도매가격,
			ifNULL(SUM(A.전국반입량),'NULL') AS 전국반입량,
			IFNULL(SUM(A.생산량_당해년),'NULL') AS 생산량_당해년,
			ifNULL(SUM(A.생산량_전년도),'NULL') AS 생산량_전년도
FROM `절임배추_도소매_2923_2010-2017_2018081` AS A
GROUP BY A.`year`, A.`week`
ORDER BY A.`year`, A.`week`;  

