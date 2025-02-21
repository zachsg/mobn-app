# mobn

## Screeshots
<div>
  <p>
    <img src="https://github.com/user-attachments/assets/22587f09-87f5-4923-bedf-51387894aa1b" width="200">
    &nbsp;
    <img src="https://github.com/user-attachments/assets/2de6ea8f-2ab7-4392-9658-5eb011884183" width="200">
    &nbsp;
    <img src="https://github.com/user-attachments/assets/a6dff783-67bb-4f25-bdf1-90b27bfc3417" width="200">
    &nbsp;
    <img src="https://github.com/user-attachments/assets/064f4672-cfb8-41d4-a9a1-604ebc9ccdb3" width="200">
    &nbsp;
    <img src="https://github.com/user-attachments/assets/a92a3230-03cc-4c8d-9ed2-764aeea2f224" width="200">
    &nbsp;
    <img src="https://github.com/user-attachments/assets/2a5d11f3-1b76-4540-a050-427256ad26ee" width="200">
    &nbsp;
    <img src="https://github.com/user-attachments/assets/b24bb150-cf88-4662-86b7-19cb3889b77d" width="200">
    &nbsp;
  </p>
</div>

## Building

### Production

#### Android
Build app bundle: flutter build appbundle

#### iOS
- Run `flutter build ios` to re-build app from command line (and ensure version changes get pushed to Xcode)
- Open XCWorkspace file in ios/ directory in Xcode
- Set build target to "Any iOS device (arm64)"
- Product > Archive
- Go through distribution flow once built to send to Appstore Connect
Development

To clean project: `flutter clean`

To get packages: `flutter pub get`

To build and run application: `flutter run`

## Generate models
To run code generation: `dart run build_runner watch`

Create / Modify splash page

To create or updated splash page: `dart run flutter_native_splash:create`

You can also specify path to YAML: `dart run flutter_native_splash:create --path=path/to/my/file.yaml`

## Generate app icon
To update app icon run: `flutter pub run flutter_launcher_icons`

You can also specify path to YAML: `flutter pub run flutter_launcher_icons -f <your config file name here>`

## Upgrading libs
To update dependencies automatically, run: `flutter pub upgrade --major-versions`

## Fixing package issues
Do:
1. `flutter pub outdated`
2. `flutter pub upgrade outdated_package`
3. `flutter clean`
4. `flutter pub get`

Run app :).

## Create / Modify splash page
To create or updated splash page: `dart run flutter_native_splash:create` 

You can also specify path to YAML: `dart run flutter_native_splash:create --path=path/to/my/file.yaml`

## Generate app icon
To update app icon run: `flutter pub run flutter_launcher_icons`

You can also specify path to YAML: `flutter pub run flutter_launcher_icons -f <your config file name here>`
