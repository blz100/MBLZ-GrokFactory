import os
from fastapi import FastAPI
from xai_sdk import Client

app = FastAPI(title="MBLZ-GrokFactory")

@app.get('/')
def root():
    return {'message': 'GrokFactory is running! Secrets from Azure Key Vault configured.'}

if __name__ == '__main__':
    import uvicorn
    uvicorn.run(app, host='0.0.0.0', port=8000)