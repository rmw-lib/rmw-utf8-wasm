use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub fn encode_bin(input: &[u8]) -> Vec<u8> {
  rmw_utf8::encode(input)
}

#[wasm_bindgen]
pub fn encode(input: String) -> Vec<u8> {
  rmw_utf8::encode(input.as_bytes())
}

#[wasm_bindgen]
pub fn decode(input: &[u8]) -> String {
  rmw_utf8::decode(input)
}
