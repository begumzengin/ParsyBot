import torch
from transformers import AutoTokenizer, AutoModelForQuestionAnswering
import random
import warnings
import re
import urllib.request, io, PyPDF2

warnings.simplefilter("ignore")

#Pdf2Text Operation
from PyPDF2 import PdfReader

reader = PdfReader("/Users/zeynepkarkiner/Documents/main_regulation.pdf")

# Fill up content with the pdf text
content = []
for i in range(len(reader.pages)):
    content += reader.pages[i].extract_text()

str_content = ""
str_content += str_content.join(map(str,content))

#Preprocessing
extracted_content = str_content.replace('\n','').lower()
wobullet_content = re.sub("article [0-9]*", "",extracted_content)
final_content = re.sub(" ?\([^)]+\)", "",wobullet_content)
final = final_content.replace("[a-z]+\)","")

# Initialize the tokenizer
tokenizer = AutoTokenizer.from_pretrained("valhalla/longformer-base-4096-finetuned-squadv1")

# Initialize the model
model = AutoModelForQuestionAnswering.from_pretrained("valhalla/longformer-base-4096-finetuned-squadv1")

greetings = ["hi", "hello", "hi there"]
closing_responses = ["see you", "see you later", "bye"]

# Specify text and question

print("Hello, I'm Parsy. How can I help you?")

while(1):
  try:
    input_sentence = input('> ')
    if input_sentence in greetings:
      print(random.choice(greetings))
    elif input_sentence in closing_responses:
      print(random.choice(closing_responses))
    elif input_sentence == 'quit': break
    else:
        
        # Tokenize the input text
        encoding = tokenizer(input_sentence, final, return_tensors="pt")
        input_ids = encoding["input_ids"]

        # Get attention mask 
          #The attention mask is a binary tensor indicating the position of the padded indices so that the model does not attend to them. 
          # For the BertTokenizer , 1 indicates a value that should be attended to, while 0 indicates a padded value.

        attention_mask = encoding["attention_mask"]

        # Get the predictions
        start_scores, end_scores = model(input_ids, attention_mask=attention_mask).values()

        # Convert predictions into answer
        all_tokens = tokenizer.convert_ids_to_tokens(input_ids[0].tolist())
        answer_tokens = all_tokens[torch.argmax(start_scores) :torch.argmax(end_scores)+1]
        answer = tokenizer.decode(tokenizer.convert_tokens_to_ids(answer_tokens))

        # Print answer
        print(answer)
      
  except KeyError:
    print("Error: Encountered unknown word.")

