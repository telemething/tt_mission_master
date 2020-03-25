// Auto-generated. Do not edit!

// (in-package tt_mission_master.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StartMissionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arg1 = null;
    }
    else {
      if (initObj.hasOwnProperty('arg1')) {
        this.arg1 = initObj.arg1
      }
      else {
        this.arg1 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartMissionRequest
    // Serialize message field [arg1]
    bufferOffset = _serializer.string(obj.arg1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartMissionRequest
    let len;
    let data = new StartMissionRequest(null);
    // Deserialize message field [arg1]
    data.arg1 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.arg1.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tt_mission_master/StartMissionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1c1538d1048b4f0bff35660720b551c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string arg1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartMissionRequest(null);
    if (msg.arg1 !== undefined) {
      resolved.arg1 = msg.arg1;
    }
    else {
      resolved.arg1 = ''
    }

    return resolved;
    }
};

class StartMissionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartMissionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartMissionResponse
    let len;
    let data = new StartMissionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tt_mission_master/StartMissionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartMissionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: StartMissionRequest,
  Response: StartMissionResponse,
  md5sum() { return 'e90883d443fcd8a6f0c6255a48a3f690'; },
  datatype() { return 'tt_mission_master/StartMission'; }
};
