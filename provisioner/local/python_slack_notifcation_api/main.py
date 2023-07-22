from fastapi import FastAPI
from pydantic import BaseModel
import os
import requests

app = FastAPI()


class Message(BaseModel):
    text: str


def send_slack_message(webhook_url: str, message: str):
    payload = {"text": message}

    response = requests.post(webhook_url, json=payload)

    if response.status_code == 200:
        print("Message sent successfully!")
    else:
        print(f"Failed to send message. Error: {response.text}")


@app.post("/send_message/")
def send_message(message: Message):
    webhook_url = os.environ.get("SLACK_WEBHOOK")
    if not webhook_url:
        raise ValueError(
            "SLACK_WEBHOOK environment variable is not set. Please set the environment variable and try again."
        )

    send_slack_message(webhook_url, message.text)
    return {"message": "Message sent successfully!"}
