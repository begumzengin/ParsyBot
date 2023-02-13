# -*- coding: utf-8 -*-
from transformers import AutoTokenizer, AutoModelForQuestionAnswering, pipeline
import torch
import random
import re
import urllib.request, io, PyPDF2


# Preprocessing with URL connection
"""url = "https://www.baskent.edu.tr/belgeler/mevzuat/yonetmelik/onlisans_yon_08.2020.pdf"
remoteFile = urllib.request.urlopen(url)
pdfReaderText = PyPDF2.PdfReader(io.BytesIO(remoteFile.read()))
content = []
for i in range(len(pdfReaderText.pages)):
    content += pdfReaderText.pages[i].extract_text()

str_content = ""
str_content += str_content.join(map(str,content))
extracted_content = str_content.replace('\n','').lower()
wobullet_content = re.sub("madde [0-9]*", "",extracted_content)
final_content = re.sub(" ?\([^)]+\)", "",wobullet_content)"""

#!!Preprocessing w/o URL connection and binded pdfs

from PyPDF2 import PdfReader

reader = PdfReader("/Users/zeynepkarkiner/Documents/ana_eğit_uzak.pdf")

# Fill up content with the pdf text
content = []
for i in range(len(reader.pages)):
    content += reader.pages[i].extract_text()

str_content = ""
str_content += str_content.join(map(str,content))

#Preprocessing
extracted_content = str_content.replace('\n','').lower()
wobullet_content = re.sub("madde [0-9]*", "",extracted_content)
final_content = re.sub(" ?\([^)]+\)", "",wobullet_content)
final = final_content.replace('a)','').replace('b)','').replace('c)','').replace('ç)','').replace('d)','').replace('e)','').replace('f)','').replace('g)','').replace('ğ)','').replace('h)','')


# nlp
tokenizer = AutoTokenizer.from_pretrained("savasy/bert-base-turkish-squad")
model = AutoModelForQuestionAnswering.from_pretrained("savasy/bert-base-turkish-squad")

nlp=pipeline("question-answering", model=model, tokenizer=tokenizer)
model.save_pretrained("/Users/zeynepkarkiner/Desktop/ENV/Parsy/qatr")

greetings = ["merhaba", "selam", "merhabalar", "selamlar"]
closing_responses = ["görüşürüz", "güle güle", "kendinize iyi bakın", "hoşçakal","hoşçakalın", "görüşmek üzere"]

print("Ben Parsy. Nasıl yardımcı olabilirim?")
while(1):
  try:
    input_sentence = input('> ')
    if input_sentence in greetings:
      print(random.choice(greetings))
    elif input_sentence in closing_responses:
      print(random.choice(closing_responses))
    elif input_sentence == 'quit': break
    else:
      result = nlp(question=input_sentence, context=final)
      if float (result['score']) > 0.00005:
         print(f"-{result['answer']}, score: {result['score']}")
      else:
        print(f"-{result['answer']}, score: {result['score']},Tam olarak anlayamadım ya da bu bilgiye sahip değilim.")
  except KeyError:
    print("Error: Encountered unknown word.")