FROM rodolpheche/wiremock

COPY reqres/stubs /home/wiremock
COPY swagger/stubs /home/wiremock