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
# 홈 디렉토리에서 mydir이라는 폴더 생성
# mydir로 이동해서 file1.txt, file2.txt 파일 생성
# file1.txt 에서는 hello from file1이라는 문구 입력
# file2.txt 에는 hello from file2라는 문구 입력
# 터미널창에 script end라는 문구 출력