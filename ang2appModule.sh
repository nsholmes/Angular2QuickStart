#!/bin/bash
#### CREATE THE APP MODULE  ####
cat > ${1} <<eof
import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

@NgModule({
  imports:      [ BrowserModule ]
})
export class AppModule { }
eof
