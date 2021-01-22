from libvoikko import Voikko
from fastapi import FastAPI

app = FastAPI()

v = Voikko('fi')

@app.get('/')
async def root():
    return {'message': 'hello world'}


@app.get('/analyze/{word}')
async def analyze(word: str):
    return v.analyze(word)
