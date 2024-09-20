*** Settings ***
Documentation       A test suite with a single test for web RVconnex
Resource            tasks-Iflix.robot

*** Test Cases ***
Go to page Movie Iflix
    Open Browser To Welcome Page
    Search Movie    Swallowed Star 
    Click Movie Swallowed Star
