#!/bin/bash

function generatePassword() {
    openssl rand -hex 16
}

