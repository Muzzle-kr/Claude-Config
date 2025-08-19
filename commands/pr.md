---
description: "현재 브랜치의 변경사항을 분석하여 PR을 생성"
---

다음 단계로 Pull Request를 생성해주세요:

1. `$ARGUMENTS`가 제공되지 않은 경우:
   - "브랜치명을 입력해주세요. 사용법: /pr <target-branch>"라고 응답

2. `$ARGUMENTS`가 제공된 경우 (target branch):
   - `git status`와 `git diff`를 실행하여 현재 브랜치의 변경사항 확인
   - `git log $ARGUMENTS...HEAD`를 실행하여 커밋 히스토리 확인
   - 변경사항과 커밋 메시지를 분석하여 PR 제목과 내용 생성:
     * 제목: 주요 변경사항을 한 줄로 요약
     * 내용: 변경사항의 목적과 주요 수정 내용을 간결하게 설명
   - `gh pr create --title "제목" --body "내용" --base $ARGUMENTS`로 PR 생성

$ARGUMENTS