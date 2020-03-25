// Auto-generated. Do not edit!

// (in-package tt_mission_master.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Waypoint = require('../msg/Waypoint.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WaypointPushRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_index = null;
      this.waypoint = null;
    }
    else {
      if (initObj.hasOwnProperty('start_index')) {
        this.start_index = initObj.start_index
      }
      else {
        this.start_index = 0;
      }
      if (initObj.hasOwnProperty('waypoint')) {
        this.waypoint = initObj.waypoint
      }
      else {
        this.waypoint = new Waypoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointPushRequest
    // Serialize message field [start_index]
    bufferOffset = _serializer.uint16(obj.start_index, buffer, bufferOffset);
    // Serialize message field [waypoint]
    bufferOffset = Waypoint.serialize(obj.waypoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointPushRequest
    let len;
    let data = new WaypointPushRequest(null);
    // Deserialize message field [start_index]
    data.start_index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [waypoint]
    data.waypoint = Waypoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 47;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tt_mission_master/WaypointPushRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1db99cb7740ddb6b25b515bcfe81cddd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    uint16 start_index
    tt_mission_master/Waypoint waypoint
    
    ================================================================================
    MSG: tt_mission_master/Waypoint
    # Waypoint.msg
    #
    
    # see enum MAV_FRAME
    uint8 frame
    uint8 FRAME_GLOBAL = 0
    uint8 FRAME_LOCAL_NED = 1
    uint8 FRAME_MISSION = 2
    uint8 FRAME_GLOBAL_REL_ALT = 3
    uint8 FRAME_LOCAL_ENU = 4
    
    # see enum MAV_CMD and CommandCode.msg
    uint16 command
    
    bool is_current
    bool autocontinue
    # meaning of this params described in enum MAV_CMD
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    float64 x_lat
    float64 y_long
    float64 z_alt
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointPushRequest(null);
    if (msg.start_index !== undefined) {
      resolved.start_index = msg.start_index;
    }
    else {
      resolved.start_index = 0
    }

    if (msg.waypoint !== undefined) {
      resolved.waypoint = Waypoint.Resolve(msg.waypoint)
    }
    else {
      resolved.waypoint = new Waypoint()
    }

    return resolved;
    }
};

class WaypointPushResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.wp_transfered = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('wp_transfered')) {
        this.wp_transfered = initObj.wp_transfered
      }
      else {
        this.wp_transfered = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointPushResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [wp_transfered]
    bufferOffset = _serializer.uint32(obj.wp_transfered, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointPushResponse
    let len;
    let data = new WaypointPushResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wp_transfered]
    data.wp_transfered = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tt_mission_master/WaypointPushResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90e0074a42480231d34eed864d14365e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint32 wp_transfered
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointPushResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.wp_transfered !== undefined) {
      resolved.wp_transfered = msg.wp_transfered;
    }
    else {
      resolved.wp_transfered = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: WaypointPushRequest,
  Response: WaypointPushResponse,
  md5sum() { return '06f01f715d9c3c308c16c8e55f6d7ad5'; },
  datatype() { return 'tt_mission_master/WaypointPush'; }
};
