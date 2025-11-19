# 사용자 추가 및 비밀번호 지정
sudo useradd newuser1
sudo passwd newuser1
# sudo : root의 권한으로 실행 -> root의 비밀번호가 아닌, 현재 사용자의 비밀번호를 입력

# su : switch축약어. 사용자 변경 -> 변경하고자 하는 계정의 비밀번호( - 다음에 계정 쓰는데 꼭 - 쓰고 한칸 띄워야함)
su - newuser1

# chmod는 권한 변경 : u(user:소유자)g(group:그룹)o(others:그외)로 구성. ex)rwxrw-r--
# r:4, w:2, x:1
chmod 644 파일명
chmod u+x 파일명 : user에 실행권한 줄께
chmod g-x 파일명 : group에 실행권한 뺄께
chmod o=r 파일명 : others에게 읽기권한만 줄께


# chown은 소유자:그룹 변경
sudo chown newuser1:newuser1 파일명