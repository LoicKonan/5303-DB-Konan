# main.py
from typing import List, Optional

from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.encoders import jsonable_encoder
from fastapi.responses import JSONResponse

class Item(BaseModel):
    id: int
    name: str
    brand: str
    price: float

class Junk(BaseModel):
    junk: Optional[str] = None


# {
#     "id":34,
#     "name":"stereo",
#     "brand":"alpine",
#     "cost":123.45
# }

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/items/")
async def read_item():
    return {"data": [1,2,3,4,5,6,7]}

@app.get("/items/{item_id}")
async def read_item(item_id:int):
    return {"item_id": item_id}

@app.post("/items/")
async def create_item(item: Item):
    return item

@app.post("/junks/")
async def create_item(junk: Junk):
    return junk