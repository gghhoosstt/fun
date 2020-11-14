
import nltk
from nltk.stem.wordnet import WordNetLemmatizer 
from nltk.corpus import wordnet
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords

class WordAttribute(object):
    def __init__(self, nltk_data_path='/mnt/d/work/model_data/nltk_data'):
        nltk.data.path.append(nltk_data_path)
        self.lema_cache = {}
        self.sw_cache = set(stopwords.words('english') + ['!',',','.','?','-s','-ly','</s>','s','.',"'",'(',')',':'])
        self.pt_cache = {}

    def is_stopwords(self, w):
        if w in self.sw_cache:
            return True
        else:
            return False

    def get_lema_word(self, w):
        return self.lema_cache.get(w, None)
        

    def get_pos_tag(self, w):
        return self.pt_cache.get(w, None) 
    
    def update_st_cache(self, w):
        self.sw_cache.add(w)
    
    def update_pt_cache(self, w1, w2):
        self.pt_cache[w1] = w2
    
    def update_lema_cache(self, w1, w2):
        self.lema_cache[w1] = w2


class WordOverlap(object):

    def __init__(self, word_type_list=['NN', 'VB', 'JJ', 'RB']):
        self.cache = WordAttribute()
        self.word_type_list = word_type_list
        
    
    def run(self, s1, s2):
        w1 = self.get_meaning_word(s1)
        w2 = self.get_meaning_word(s2)
        # print(w1)
        # print(w2)
        return self.is_word_overlap(w1, w2)
        # return self.dice_coeff(w1, w2)

    def run_dc(self, s1, s2):
        w1 = self.get_meaning_word(s1)
        w2 = self.get_meaning_word(s2)
        # print(w1)
        # print(w2)
        return self.dice_coeff(w1, w2), len(w2)

    def is_word_overlap(self, w1, w2):
        length = len(set(w1) & set(w2))
        if length > 0:
            return (True, length)
        else:
            return (False, length)

    def dice_coeff(self, w1, w2):
        nume = len(set(w1) & set(w2))
        deno = len(set(w1)) + len(set(w2))
        dc = 2.0 * nume / deno
        return dc
        
    def get_meaning_word(self, s):
        word_list = tokenize(s)
        filtered_word_list = self.remove_stopwords(word_list)
        item = self.pos_tag(filtered_word_list)
        # print(item)
        return item

    def pos_tag(self, word_list):
        result_list = []
        for word in word_list:
            lema_word = self.cache.get_lema_word(word)
            # print(word, lema_word)
            if lema_word is not None:
                result_list.append(lema_word)
                continue

            tag = self.cache.get_pos_tag(word)
            if tag is None:
                tag = nltk.pos_tag([word])[0][1]
                self.cache.update_pt_cache(word, tag)

            # print(word, tag)
            if tag[:2] in self.word_type_list:              
                typeofwords = get_wordnet_pos(tag)
                lema_word = lematizer(word, typeofwords)
                result_list.append(lema_word)
                self.cache.update_lema_cache(word, lema_word)
            else:
                self.cache.update_st_cache(word)
        return result_list

    def remove_stopwords(self, word_list):   
        filtered_words = [ word for word in word_list if not self.cache.is_stopwords(word) ]
        return filtered_words

# TODO 分词 -> 词性分析 -> 去停用词 -> 过滤^n ^v ^adj -> 词性还原  -> 相同的词
def get_wordnet_pos(treebank_tag):

    if treebank_tag.startswith('J'):
        return wordnet.ADJ
    elif treebank_tag.startswith('V'):
        return wordnet.VERB
    elif treebank_tag.startswith('N'):
        return wordnet.NOUN
    elif treebank_tag.startswith('R'):
        return wordnet.ADV
    else:
        return ''

def tokenize(s):
    s = s.lower()
    word_list = word_tokenize(s)
    return word_list

# 词性还原
def lematizer(word, tag):
    wordnet_lematizer = WordNetLemmatizer()
    return wordnet_lematizer.lemmatize(word, tag)



if __name__ == "__main__":
    # cache = WordAttribute()
    # cache.update_st_cache("aaa")
    # cache.update_pt_cache("aaa", "NNS")
    # cache.update_lema_cache("going", "go")

    # print(cache.get_lema_word("going"))
    # print(cache.is_stopwords("aaa"))
    # print(cache.get_pos_tag("aaa"))
    s1 = "I we are running eggs left don't loved the up china?like-you good better best not likely coldy none sweety recently now"
    s2 = "love is what tree duck ran leave? "
    s3 = "A standard is used for comparison to determine how changing one variable changes the results."
    s4 = "When conducting a controlled experiment you use a standard because you compare your other results to see if it is accurate."
    
    overlap = WordOverlap(["NN", "VB"])
    print(overlap.run(s1, s2))
    print(overlap.run(s2, s3))
    print(overlap.run(s2, s1))
    print(overlap.run(s3, s4))
    # w1 = get_meaning_word(s1)
    # w2 = get_meaning_word(s2)
    # w3 = get_meaning_word(s3)
    # print(is_word_overlap(w1, w2))
    # print(is_word_overlap(w1, w3))

