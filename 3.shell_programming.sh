# 쉘 스크립트는 반드시 .sh 확장자
# 쉘 스크립트는 살행할때 ./myscript.sh 로 실행
# 실행을 위해서는 실행권한(x)가 필요
# 예시
touch myscript.sh // 파일 만들고
nano myscript.sh  // 편집모드 들어감
echo "hello world"  // 작업
chmod u+x myscript.sh  // 권한 바꾸기
./myscript.sh  // 파일실행

# 실습1
# myscript2 쉘스크립트파일 생성
# 터미널창에 script start라는 문구 출력
echo "script start"
# 홈 디렉토리에서 mydir이라는 폴더 생성
cd
mkdir mydir
# mydir로 이동해서 file1.txt, file2.txt 파일 생성
cd mkdir
touch file1.txt file2.txt
# file1.txt 에서는 hello from file1이라는 문구 입력
echo "hello from file1" > fil1.txt
# file2.txt 에는 hello from file2라는 문구 입력
echo "hello from file2" > file2.txt
# 터미널창에 script end라는 문구 출력
echo "script end"
# touch myscript2.sh
# nano myscript2.sh
# // myscript2에 작성
# echo "script start"
# cd
# mkdir mydir
# cd mydir
# touch file1.txt
# touch file2.txt
# echo "hello from file1" >> file1.txt
# echo "hello from file2" >> file2.txt
# echo "script end" 

# chmod u+x myscript2.sh
# ./myscript2
# --> 홈에 디렉토리 잘 만들어졌는지, 파일 잘 생성됬는지, 내용 잘 들어갔는지 확인하고 잘 됬으면 끝

# 실습2  --- cp와 mv의 활용
# myscript2 생성
# script2 start 터미널창에 출력
echo " script2 start"
# 홈디렉토리의 mkdir로 이동(절대경로이동)
cd /home/hyesu/mydir
# file1.txt 파일의 백업본 생성. 이름은 file_backup.txt
cp file1.txt file2_backup.txt
# file2.txt 파일의 이름을 file2_rename.txt로 변경
mv file2.txt ./file2_rename.txt
# script2 end 터미널창에 출력
echo "script2 end"

#if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt
if [ -f "$file_name" ]; then
    echo "$file_name file exists"
else
    echo "$file_name file does not exists"
fi

# for문
for a in {1..100}
do
    echo "hello world $a"
done

# for문과 파일/디렉토리 목록조회
for a in *
do
    echo "$a"
done

# for문을 통해 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"
