from fastapi import FastAPI

app = FastAPI(title="Ubuntu Web Enviroment")

@app.get('/')
def root ():
	return {"status": "ok", "message": "Ubuntu Web Enviroment backend is working"}

@app.get("/health")
def health():
	return {"status": "healthy"}
