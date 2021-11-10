#!/usr/bin/env coffee

import {encode, encode_bin, decode} from './pkg'

t = encode 'test'
console.log t
console.log decode t

t = encode_bin Buffer.from('test')
console.log t
console.log decode t
