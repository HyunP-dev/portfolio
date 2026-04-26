#set text(font: "NanumGothic")

#import "@preview/diatypst:0.9.1": *
#show: slides.with(
  title: "박  현",
  subtitle: "필요하면 직접 만들어 쓰는 개발자",
  date: "",
  authors: "Hyun Park",
  ratio: 16 / 9,
  toc: false,
)

#set heading(numbering: none)

= 자기소개

== 박현

=== 학력
- 한림대학교 (2020. 03. \~ 2024. 02.), 정보과학대학 소프트웨어전공 학사

=== 연구 활동

- 한림대학교 임베디드 연구실 (2021. 08. \~ 2023. 12.)
  - IMU 센서를 활용한 걸음 수 측정 알고리즘 작성
  - 심박수 측정 어플리케이션 개발

- 한림대학교 디지털의료 미래연구소 (2023. 07. \~ 2023. 12.)
  - A Virtual Reality-Based Multimodal Approach to Diagnosing Panic Disorder and Agoraphobia Using Physiological Measures: A Machine Learning Study

=== 회사 활동
- AbleSECU (2024. 02. \~ 2024. 10.), Customer Service Engineer
  - Windows Artifacts 연구
  - DFAS Pro에 대한 QA 엔지니어링

= 프로젝트

== 다크넷 분석 도구
#grid(
  columns: (1fr, 2fr),
  gutter: 10pt,
  [

  ],
  [
    === 예제
    ```python
    import hashlib
    
    from flashlight.checkitonion import CheckItOnion
    from flashlight.ahmia import get_banned
    
    def main():
        blacklist = get_banned()
        for site in CheckItOnion().topsites:
            md5 = hashlib.md5(site.url.encode()).hexdigest()
            if md5 in blacklist:
                if site.is_running:
                    print(site.url, site.title, sep="\t")
    
    if __name__ == "__main__":
        main()
    ```],
)

== 확장 가능한 증거 이미지 분석 도구

/ 왜 만들게 되었는가?:
  포렌식 CTF를 풀 때 주로 FTK Imager를 사용해오던 중
  뷰어로 지원하는 포맷들이 한정적이기 때문에 매번 파일을 내보낸 후에 분석해야 하는 문제를 겪음.
  
  이에 FTK Imager의 UI와 유사하면서도 여러 아티팩트들을 분석할 수 있는 도구를 만들고 싶어
  파이썬을 이용해 간단히 기능을 확장할 수 있는 나만의 포렌식 도구를 만들게 되었음.

/ 어떻게 만들었는가?:
  Python에는 TSK를 비롯한 여러 포렌식 라이브러리들에 대한 Wrapper와 GUI 프레임워크로 유명한 Qt의 바인딩이 있음.
