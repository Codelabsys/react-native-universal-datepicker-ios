'use strict';
import React, { Component } from 'react';
import PropTypes from 'prop-types';
import {
  StyleSheet,
  View,
  NativeModules,
  requireNativeComponent,
} from 'react-native';

class DatePickerIOS extends Component {
  _onChange = (event) => {
    const timestamp = event.nativeEvent.timestamp;
    const date = event.nativeEvent.date;
    this.props.onChange && this.props.onChange({ date, timestamp });
  }
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
};
DatePickerIOS.propTypes = {
  date: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),
  onChange: PropTypes.func,
  maximumDate: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),
  minimumDate: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),
  mode: PropTypes.oneOf(['date', 'time', 'datetime']),
  timeZoneOffsetInMinutes: PropTypes.number,
  dateFormat: PropTypes.string,
  calendar: PropTypes.string,
}
DatePickerIOS.defaultProps = {
  mode: 'datetime',
  date: new Date().getTime(),
  dateFormat: "dd-MM-yyyy",
  calendar: "Gregorian"
};
const styles = StyleSheet.create({
  datePickerIOS: {
    height: 216,
  },
});

var RCTDatePickerIos = requireNativeComponent("RCTDatePickerIos", DatePickerIOS);
module.exports = DatePickerIOS;
