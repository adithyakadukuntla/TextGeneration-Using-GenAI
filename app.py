#We have given our requirements (FastAPI & transformers)
from fastapi import FastAPI
#we will be using transformers
from transformers import pipeline
#We will initialize our TextGeneration part but before we will create
#a fastapi object
app = FastAPI()
pipe = pipeline("text2text-generation",
                model = "google/flan-t5-small")
#now we start giving the route
@app.get('/')
def home():
    return {'message':'Hello Welcome To Flan'}
#Define another function to handle the text generation 
@app.get('/generate')
def generate(text:str):
    """Use the pipeline to generate text from the given text"""
    output = pipe(text)
    #return the generated text in JSON response
    return {"output":output[0]['generated_text']}