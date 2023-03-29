import {View, StyleSheet} from 'react-native';
import React from 'react';
import TestBridge from './src/TestBridge';

const App = () => {
  return (
    <View style={styles.container}>
      <TestBridge />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    justifyContent: 'center',
    alignItems: 'center',
    flex: 1,
  },
});

export default App;
