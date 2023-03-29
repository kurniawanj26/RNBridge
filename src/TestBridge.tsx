import {
  View,
  Text,
  NativeModules,
  Pressable,
  Platform,
  StyleSheet,
} from 'react-native';
import React from 'react';

const TestBridge = () => {
  return (
    <View style={styles.container}>
      <Text>RN Bridge</Text>
      <Pressable
        style={styles.button}
        onPress={() => {
          Platform.OS === 'ios'
            ? NativeModules.SimpleBridge.DisplayText('Test', 3)
            : // not handled yet for other OS
              null;
        }}>
        <Text>Show Message</Text>
      </Pressable>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    justifyContent: 'center',
    alignItems: 'center',
  },
  button: {
    padding: 10,
    marginTop: 20,
    backgroundColor: 'orange',
    borderRadius: 10,
  },
});

export default TestBridge;
