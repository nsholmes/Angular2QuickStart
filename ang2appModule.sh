#!/bin/bash
#### CREATE THE APP MODULE  ####
cat > ${1} <<eof
import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component'

@NgModule({
  imports:      [ BrowserModule ],
  declarations: [ AppComponent ],
  bootstrap:  [ AppComponent]
})
export class AppModule { }

eof
