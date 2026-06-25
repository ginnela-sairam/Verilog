# Day 2: Gas Detection System (AND Gate Logic) 🚀

Welcome to Day 2 of my Verilog hardware design journey! Today, I built a practical combinational logic circuit at the dataflow level. 

## 📝 Project Overview
This project is a **Gas Detection System**. It uses an `AND` gate to ensure that the alarm *only* triggers if two conditions are met simultaneously:
1. Gas is detected (`1`)
2. It is night time (`1`)

If it is daytime, or if there is no gas, the alarm stays off (`0`).

---

## 🔌 Inputs & Outputs Explained
Here is exactly what the "pins" on our hardware chip represent in the real world:

**Inputs (Sensors):**
* `gas_detection`: 
  * `0` = Safe (No gas)
  * `1` = Danger (Gas leak detected)
* `day_night`: 
  * `0` = Daytime
  * `1` = Nighttime

**Output (Result):**
* `alarm`: 
  * `0` = Alarm is OFF 🔇
  * `1` = Alarm is ON 🚨

---

## 🧪 Test Cases Explained
In the testbench, I tested all 4 possible real-world scenarios to prove the chip works perfectly:

1. `gas_detection = 0`, `day_night = 0`
   * **Real world:** No gas, and it is daytime. 
   * **Result:** Alarm OFF (`0`).
2. `gas_detection = 1`, `day_night = 0`
   * **Real world:** Gas leak, but it is daytime (people are awake to smell it). 
   * **Result:** Alarm OFF (`0`).
3. `gas_detection = 0`, `day_night = 1`
   * **Real world:** No gas, and it is nighttime. 
   * **Result:** Alarm OFF (`0`).
4. `gas_detection = 1`, `day_night = 1`
   * **Real world:** Gas leak AND it is nighttime (people are asleep). 
   * **Result:** **Alarm ON (`1`)!** 🚨

---

## 💻 The Code

### 1. The Design File: `Gas_detection_at_night.v`
This file contains the actual logic gate for the circuit.

```verilog
module Gas_detection_at_night (gas_detection, day_night, alarm);

  input gas_detection, day_night;
  output alarm;

  // The alarm only turns on if BOTH inputs are 1 (AND gate)
  assign alarm = gas_detection & day_night;

endmodule
