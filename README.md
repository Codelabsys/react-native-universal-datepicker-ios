# react-native-universal-datepicker-ios.
[![Codelab](http://www.codelabsys.com/images/logo.png)](http://www.codelabsys.com/)

#### This component works only on IOS.

## Installation.
   [![NPM](https://nodei.co/npm/react-native-universal-datepicker-ios.png?downloads=true&downloadRank=true&stars=true)](https://nodei.co/npm/react-native-hijri-date-picker-android/)
   
$ npm install react-native-universal-datepicker-ios --save

$ react-native link react-native-universal-datepicker-ios

## List of available calendars.
* Gregorian
* hijri [IslamicUmmAlQura, Islamic, islamicCivil, islamicTabular]
* chinese
* republicOfChina
* persian 
* japanese
* indian
* coptic
* ISO8601

## Available props.

| Name | Type| Default | Description |
| --- | --- | --- | --- |
| date | string or number | today timestamp (new Date().getTime()) | timestamp value that represents the initial value of the datepicker |
| maximumDate | string or number | null | timestamp value that represents the maximum date that the user can select |
| minimumDate | string or number | null | timestamp value that represents the minimum date that the user can select |
| onChange | func | () => null | Callback that is fired when user changes current selected date. The returned object have two properties timestamp and string date |
| dateFormat | string | dd-MM-yyyy | Format for the returned selected date |
| calendar | string | Gregorian | sets native calendar type |
| mode | string | datetime | type of the picker supports date, time, datetime |

## Usage

```javascript
  import DatepickerIOS from 'react-native-universal-datepicker-ios';
  
 _onDateChange: function({date, timestamp}){}
 
 <DatePickerIOS calendar="IslamicUmmAlQura" 
                date={new Date().getTime()}  
                onChange={this._onDateChange} />
```

## Credits

This project was made by the help of [basemsaadawy](https://github.com/basemsaadawy)
