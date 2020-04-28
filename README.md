
# react-native-invitereferrals

## Getting started

`$ npm install react-native-invitereferrals --save`

### Mostly automatic installation

`$ react-native link react-native-invitereferrals`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-invitereferrals` and add `RNInvitereferrals.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNInvitereferrals.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNInvitereferralsPackage;` to the imports at the top of the file
  - Add `new RNInvitereferralsPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-invitereferrals'
  	project(':react-native-invitereferrals').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-invitereferrals/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-invitereferrals')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNInvitereferrals.sln` in `node_modules/react-native-invitereferrals/windows/RNInvitereferrals.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Invitereferrals.RNInvitereferrals;` to the usings at the top of the file
  - Add `new RNInvitereferralsPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNInvitereferrals from 'react-native-invitereferrals';

// TODO: What to do with the module?
RNInvitereferrals;
```
  