# Git 커밋 도우미

git 변경사항을 분석하고 Conventional Commits 표준에 맞춰 커밋 메시지를 생성합니다.

1. git status와 git diff로 변경 내용 분석
2. 변경사항 성격 파악하여 적절한 커밋 메시지 작성
3. 사용자 확인 후 커밋 실행

## Conventional Commits 형식

- `feat:` - 새로운 기능 추가
- `fix:` - 버그 수정
- `docs:` - 문서 변경
- `style:` - 코드 formatting, 세미콜론 등의 변경
- `refactor:` - 코드 리팩토링
- `test:` - 테스트 추가 또는 수정
- `chore:` - 빌드 도구, 패키지 관리자 등의 변경