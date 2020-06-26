
# react-native-kakao-test

## Getting started

`$ npm install react-native-kakao-test --save`

### installation(RN >= 0.60)
별도 링크 과정이 필요없습니다.

**NOTE**: 최신버전 기준이므로 수동 링크과정은 생략.


#### iOS

[카카오링크 공식가이드](https://developers.kakao.com/docs/latest/ko/getting-started/sdk-ios-v1) 를 참고하셔서 모듈을 사용하기 위한 KakaoSDK를 설치하시기 바랍니다.

**Note** : KakaoSDK frameworks를 추가한 후 Pods - RNKakaoLink 에서 헤더를 참조하지 못하는 경우

XCode의 좌측에서 Pods PROJECT 선택 후 TARGETS - RNKakaoLink 를 찾아 BuildSettings - Framework SearchPath 에 $(PROJECT_DIR)/.. 를 추가해주시면 됩니다.


#### Android

android/app/src/main/res/values/string.xml
```
<resources>
    <string name="app_name">{APP_NAME}</string>
    <string name="kakao_app_key">{APP_KEY}</string>
    <string name="kakao_scheme">kakao{APP_KEY}</string>
    <string name="kakaolink_host">kakaolink</string>
</resources>
```

android/build.gradle
```
...

allprojects {
    repositories {
        mavenLocal()
        jcenter()
        maven {
            // All of React Native (JS, Obj-C sources, Android binaries) is installed from npm
            url "$rootDir/../node_modules/react-native/android"
        }
        maven {
            url 'https://maven.google.com/'
            name 'Google'
        }
        // 다음 두 줄 추가.      
        mavenCentral()
        maven { url 'http://devrepo.kakao.com:8088/nexus/content/groups/public/' }
    }
}

...
```

android/app/build.gradle 
```
dependencies {
    compile project(':react-native-kakao-test')
    compile fileTree(dir: "libs", include: ["*.jar"])
    compile "com.android.support:appcompat-v7:${rootProject.ext.supportLibVersion}"
    compile "com.facebook.react:react-native:+"  // From node_modules
    // 다음 한 줄 추가.
    compile group: 'com.kakao.sdk', name: 'kakaolink', version: project.KAKAO_SDK_VERSION
}
```

android/gradle.properties
```
// 다음 두줄 추가.
KAKAO_SDK_GROUP=com.kakao.sdk
KAKAO_SDK_VERSION=1.13.0
```

android/app/src/main/AndroidManifest.xml
```
...
  </intent-filter>
</activity>

<!-- 다음 두 줄 추가. -->
<meta-data android:name="com.kakao.sdk.AppKey"
           android:value="@string/kakao_app_key" />
...
```
