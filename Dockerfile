FROM node:buster-slim

RUN curl -q https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/chrome.list \
    && apt-get update \
    && apt-get install -qqy google-chrome-stable \
    && rm -rf /var/lib/apt/lists/*