# 실행을 위한 Private Key 생성
아래 이미지와 같이 Outputs의 `" "`를 포함한 `public_key_openssh` 항목의 전체 내용 복사

![image](https://github.com/user-attachments/assets/7f4acbbf-c192-4d71-aa57-69cb45f8ca18)

```bash
echo <복사한 Outputs의 public_key_openssh 내용> > ~/offline.pem
```
```bash
chmod 400 ~/offline.pem
```
