module sml::model;

use sui::coin;
use sui::event;

// 자연상수 e의 근사값 (2.71828...)
// public fun getE(): u64 {
//     2718281828459045235 //36028747135266249
// }

// const E: u64 = 2718281828459045235

// Sigmoid 함수 구현
// public fun sigmoid(x: u64): u64 {
//     let e = getE()
//     // e^(-x) 계산
//     let neg_x: u64 = e / pow(10, x); // e^(-x)의 근사값을 정수형으로 계산
//     // Sigmoid 계산
//     return e / (e + neg_x);
// }

// 거듭제곱 계산 함수 (10의 n 제곱을 구함)
// public fun pow(base: u64, exp: u64): u64 {
//     let mut temp: u64 = 1;
//     let mut i: u64 = 0;
//     let mut result: u64 = 0;

//     while (i < exp) {
//         temp = temp * base;
//         i = i + 1;
//     }

//     // result = temp;
//     temp
// }

public fun w1(): u64 {
    1 // 상수 값
}

public fun w2(): u64 {
    2 // 상수 값
}

public fun w3(): u64 {
    3 // 상수 값
}

public fun w4(): u64 {
    4 // 상수 값
}

public fun w5(): u64 {
    5 // 상수 값
}

public fun w6(): u64 {
    6 // 상수 값
}

public fun w7(): u64 {
    7 // 상수 값
}

public fun w8(): u64 {
    8 // 상수 값
}

public fun b1(): u64 {
    1 // 상수 값
}

public fun b2(): u64 {
    2 // 상수 값
}

public fun scale(): u64 {
    10 // 상수 값
}

public struct Output1 has copy, drop {
    o1: u64
}

public struct Output2 has copy, drop {
    o2: u64
}

public struct Output3 has copy, drop {
    o3: u64
}

public struct Output4 has copy, drop {
    o4: u64
}

public struct Result has copy, drop {
    result: u64
}

public fun add(a: u64, b: u64, ctx: &mut TxContext): u64 {
    return a + b
}

public entry fun add2(in1: u64, in2: u64, ctx: &mut TxContext): u8 {
    // add(a, b, ctx)
    
    let o1 = (in1 * w1() + in2 * w3() + b1());
    let o2 = (in1 * w2() + in2 * w4() + b1());

    let o3 = (o1 * w5() + o2 * w6() + b2());
    let o4 = (o1 * w7() + o2 * w8() + b2());

    let result = o3 + o4;
    //  + w3() * scale() + w4() * scale() + w5() * scale() + w6() * scale() + w7() * scale() + w8() * scale()) / scale(); // + w2 * scale + w3 * scale + w4 * scale + w5 * scale + w6 * scale + w7 * scale + w8 * scale) scale;

    event::emit(Output1 { o1 });
    event::emit(Output2 { o2 });
    event::emit(Output3 { o3 });
    event::emit(Output4 { o4 });

    event::emit(Result { result });

    let x: u8 = 8;
    let y: u8 = 8;
    x + y
}


