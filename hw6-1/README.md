Rozetta
========
`rozetta.ml` 파일에 있는 `trans` 함수를 완성하시고 그 파일만 제출해 주세요.

- [숙제문서](http://ropas.snu.ac.kr/~kwang/4190.310/15/hw6.pdf)
- [공지](https://ropas.snu.ac.kr/phpbb/viewtopic.php?t=5157&sid=dab9401469898e5efa942d4f30c29f00)

`sm5.ml`에는 sm5언어와 실행기, `sonata.ml`에는 sonata 언어와 실행기가 정의되어
있습니다. 아래와 같이 실행하면, 주어진 sm5 프로그램을 여러분이 작성하신
rozetta 번역기에 따라 번역하고 Sonata 기계로 실행합니다.

    $ make
    $ ./run examples/test1.sm5

#### 테스트
주어진 SM5 프로그램을 SM5 기계로 실행한 결과를 다음과 같이 확인할 수 있습니다.
번역이 제대로 되었다면, Sonata 기계로 실행한 결과와 SM5 기계로 실행한 결과가
같아야 합니다.

    $ ./run -sm5 examples/test1.sm5

#### 번역결과 출력
주어진 SM5 프로그램을 Sonata로 번역한 결과를 -psonata 옵션을 통해 출력할 수 있습니다.

    $ ./run -psonata examples/test1.sm5

#### Debug mode
주어진 프로그램을 SM5나 Sonata 기계로 실행할 때, 매 스텝마다 기계 상태를 출력합니다.

    $ ./run -debug examples/test1.sm5

--------

* 03 최웅식 <wschoi@ropas.kaist.ac.kr>
* 04 신재호 <netj@ropas.snu.ac.kr>
* 05 김덕환 <dk@ropas.snu.ac.kr>
* 05 오학주 <pronto@ropas.snu.ac.kr>
* 박대준 <pudrife@ropas.snu.ac.kr>
* 06 이희종 <ihji@ropas.snu.ac.kr>
* 정영범 <dreameye@ropas.snu.ac.kr>
* 07 오학주 <pronto@ropas.snu.ac.kr>
* 09 허기홍 <khheo@ropas.snu.ac.kr>
* 10 조성근 <skcho@ropas.snu.ac.kr>
* 11 윤용호 <yhyoon@ropas.snu.ac.kr>
* 11 김진영 <jykim@ropas.snu.ac.kr>
* 15 최재승 <jschoi@ropas.snu.ac.kr>