#!/bin/bash
####### Creates the App.Component setup file  ######
cat > ${1} <<eof
import { Component } from '@angular/core';
@Component({
  selector: '--DOM selector here--',
  template: '--template code here--'
})
export class AppComponent { }

eof
