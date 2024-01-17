import Prompt from '@system.prompt'
import router from '@ohos.router'
@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World'
  @State user:string=''
  @State password:string=''

  //test
  //test

  build() {
    Column() {
      Column() {
        Text("登录界面")
          .width("200vp")
          .height("60vp")
          .offset({ x: "0vp", y: "-180.41vp" })
          .fontSize("50fp")

        TextInput({ placeholder: "账号" })
          .width("200vp")
          .height("60vp")
          .offset({ x: "0vp", y: "-129.72vp" })
          .onChange((value:string)=>{
            this.user=value;
          })
        TextInput({ placeholder: "密码" })
          .width("200vp")
          .height("60vp")
          .offset({ x: "0vp", y: "-117.96vp" })
          .type(InputType.Password)
          .onChange((value:string)=>{
            this.password=value;
          })
        Row() {
          Text("手机验证码登录")
            .width("108.9vp")
            .height("66.24vp")
            .offset({ x: "28.02vp", y: "0.16vp" })
            .opacity(1)
            .textAlign(TextAlign.Center)
            .fontSize("15fp")
          Text("忘记密码")
            .width("119.51vp")
            .height("53.14vp")
            .offset({ x: "115.04vp", y: "0.15vp" })
            .textAlign(TextAlign.Center)
            .fontSize("15fp")
        }
        .width("360vp")
        .height("77.64vp")
        .offset({ x: "0vp", y: "-93.43vp" })
        Button("登录")
          .onClick(()=>{
            if(this.user==''||this.password=='')
            {
              Prompt.showToast({
                message:'用户名和密码不能为空！',
                duration:2000
              });

            }
            else {
              if(this.user!='admin'||this.password!='admin')
              {
                Prompt.showToast({
                  message:'用户名密码错误！',
                  duration:2000
                });
              }else {
                router.replaceUrl({
                  url:'pages/HomePage'
                })
              }
            }
          })
          .width("125.19vp")
          .height("55.56vp")
          .offset({ x: "0.07vp", y: "-56vp" })
          .fontSize("20fp")
        Row() {
          Image($r('app.media.weixin'))
            .width("52vp")
            .height("52vp")
            .offset({ x: "35.56vp", y: "0.04vp" })
          Image($r('app.media.qq'))
            .width("52vp")
            .height("52vp")
            .offset({ x: "101.67vp", y: "0.04vp" })
          Image($r('app.media.huawei'))
            .width("52vp")
            .height("52vp")
            .offset({ x: "163.56vp", y: "0.04vp" })
        }
        .width("360vp")
        .height("80.74vp")
        .offset({ x: "0vp", y: "192.77vp" })
      }
      .width("100%")
      .height("100%")
      .offset({ x: "0", y: "1vp" })
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
    .alignItems(HorizontalAlign.End)
  }
}