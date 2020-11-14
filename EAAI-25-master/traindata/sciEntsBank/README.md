

### data augumention method
* method1: back translation
* method2: correct answer as reference answer
* method3: replace column between A-origin and B-backtrans

### meaning
* A-origin

    source data

* B-backtrans
    
    method1 on A-origin

* B-caasra

    method2 on A-origin

* B-caasra-on-backtrans

    method2 on B-backtrans

* C-merge-backtrans-origin

    merge A-origin and B-backtrans.

* D-merge-backtrans-origin-replace
    
    method3: merge A-origin and B-backtrans with replace. such as replace A student answer with B student answer.

* D-caasra-on-origin-and-backtrans

    using method2 on C-merge-backtrans-origin

* E-max

    using method3 on C-merge-backtrans-origin, then using method2 on output data.
