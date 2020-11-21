import http.client
import hashlib
import json
import urllib
import random
import time
 # python3 src/util/baidu_translate.py
 
#调用百度翻译API将中文翻译成英文
def baiduTranslate(fromLang, toLang, content):
    appid = '20190829000330535'
    secretKey = 'wjqsiYbnZE8xiW6zcZlv'
    httpClient = None
    myurl = '/api/trans/vip/translate'
    q = content

    salt = random.randint(32768, 65536)
    sign = appid + q + str(salt) + secretKey
    sign = hashlib.md5(sign.encode()).hexdigest()
    myurl = myurl + '?appid=' + appid + '&q=' + urllib.parse.quote(
        q) + '&from=' + fromLang + '&to=' + toLang + '&salt=' + str(
        salt) + '&sign=' + sign
 
    error_code = '54003'
    dst = ''
    times = 0
    sleepTime = 0
    while error_code == '54003' and times <= 20:
        time.sleep(sleepTime)
        
        httpClient = http.client.HTTPConnection('api.fanyi.baidu.com')
        httpClient.request('GET', myurl)
 
        # response是HTTPResponse对象
        response = httpClient.getresponse()
        jsonResponse = response.read().decode("utf-8")  # 获得返回的结果，结果为json格式
        js = json.loads(jsonResponse)  # 将json格式的结果转换字典结构
        error_code = js.get('error_code', '1')
        if error_code == '1':
            dst = str(js["trans_result"][0]["dst"])  # 取得翻译后的文本结果
        #print(dst)  # 打印结果
        
        times += 1
        sleepTime= 0.5 * (2 ** times)
        # print(times)
    
    if dst != '':
        return dst
    else: 
        raise Exception("翻译失败！")
    
    if httpClient:
        httpClient.close()

def backTranslate(fromLang, toLang, content):
    step1 = baiduTranslate(fromLang, toLang, content)
    step2 = baiduTranslate(toLang, fromLang, step1)
    
    return step2
 
if __name__=='__main__':
    contents='he rain had only ceased with the gray streaks of morning at Blazing Star'
    backResult = backTranslate('en', 'jp', contents)  # 中文翻译成英文
    print(backResult)
