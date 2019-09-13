#!/bin/bash
test $(curl 'http://172.19.30.187:8765/sum?a=1&b=2') -eq 3