
'use strict';
import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  NativeModules,
  requireNativeComponent,
} from 'react-native';

const DatePickerIOS = React.createClass({
  propTypes: {
    date: React.PropTypes.oneOfType([React.PropTypes.string, React.PropTypes.number]),
    onChange: React.PropTypes.func,
    maximumDate: React.PropTypes.oneOfType([React.PropTypes.string, React.PropTypes.number]),
    minimumDate: React.PropTypes.oneOfType([React.PropTypes.string, React.PropTypes.number]),
    mode: React.PropTypes.oneOf(['date', 'time', 'datetime']),
    timeZoneOffsetInMinutes: React.PropTypes.number,
    dateFormat: React.PropTypes.string,
    calendar: React.PropTypes.string,
  },
  getDefaultProps: function () {
    return {
      mode: 'datetime',
      date: new Date().getTime(),
      dateFormat: "dd-MM-yyyy",
      calendar: "Gregorian"
    };
  },
  _onChange(event) {
    const timestamp = event.nativeEvent.timestamp;
    const date = event.nativeEvent.date;
    this.props.onChange && this.props.onChange({ date, timestamp });
  },
  render() {
    const props = this.props;
    return (
      <View style={props.style}>
        <RCTDatePickerIos
          mode={props.mode}
          calendar={props.calendar}
          onChange={this._onChange}
          date={props.date}
          maximumDate={props.maximumDate}
          minimumDate={props.minimumDate}
          dateFormat={props.dateFormat}
          style={styles.datePickerIOS}
        />
      </View>
    );
  }
});
const styles = StyleSheet.create({
  datePickerIOS: {
    height: 216,
  },
});

var RCTDatePickerIos = requireNativeComponent("RCTDatePickerIos", DatePickerIOS);
module.exports = DatePickerIOS;