import {
  NativeModules,
  Platform,
} from 'react-native';

import type {
  IFingerprintService,
} from './domain';

import type {
  Token,
} from './domain'

const LINKING_ERROR =
  `The package 'react-native-fingerprint-mobile' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

const FingerprintMobile = NativeModules.FingerprintMobile
  ? NativeModules.FingerprintMobile
  : new Proxy(
    {},
    {
      get() {
        throw new Error(LINKING_ERROR);
      },
    }
  );

/**
 * Fingerprint is the
 * @param apiKey is the client API KEY
 * @returns
 */
const FingerprintService = (apiKey: string): IFingerprintService => {
  return {
    /**
     * Generate a Token Device from the backend managed by android module and
     * parses the string to JSON.
     * @returns a token Promise
     */
    analyze: async (): Promise<Token> => {
      return FingerprintMobile
        .analyze(apiKey)
        .then((tokenAsJSONString: string) => {
          // Parse the string to JSON
          return JSON.parse(tokenAsJSONString) as Token;
        });
    },
  } as IFingerprintService;
}

export default FingerprintService;
