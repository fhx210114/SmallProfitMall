<template>
  <div class="container">
    <img class="bg" src="http://img.isdfmk.xyz/404.png"/>
    <div class="btn">
      <a class="goindex" onclick="history.back()">返回上一页面</a>
      <a class="lx" href="https://www.smallprofit.fhxasdsada.xyz/home">返回首页</a>
      <div style="clear:both;"></div>
    </div>
  </div>
</template>
<script>
  export default{
    mounted() {
      // if (!document.getElementById('publicBenefit')) {  //避免多次引入
      //   const script = document.createElement('script');
      //   script.type = 'text/javascript';
      //   script.src = '//qzonestyle.gtimg.cn/qzone/hybrid/app/404/search_children.js';
      //   script.charset="utf-8";
      //   script.homePageUrl="https://www.smallprofit.fhxasdsada.xyz/home";
      //   script.homePageName="回到首页";
      //   script.id = 'publicBenefit';
      //   document.body.appendChild(script);
      // }
    }
  }


</script>
<style scoped>

  * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: "微软雅黑";
  }

  body, html {
    width: 100%;
    height: 100%;
  }

  .container {
    max-width: 90%;
    margin: 0 auto;
    padding: 80px 0px;
  }

  img {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  .bg {
    display: block;
    max-width: 100%;
    margin: 0px auto;
    margin: 40px auto;
  }

  .btn {
    width: 400px;
    margin: 0 auto;
    max-width: 100%;
    margin-top: 40px;
  }

  .btn a {
    float: left;
    text-decoration: none;
    width: 46.5%;
    border: 1px solid #5298ff;
    background: #5298ff;
    color: #FFF;
    display: block;
    height: 46px;
    line-height: 44px;
    text-align: center;
    font-size: 16px;
    border-radius: 3px;
    overflow: hidden;
  }

  .btn .goindex {
    margin-right: 7%;
  }

  .btn .lx {
    border: 1px solid #d8d8d8;
    background: #ffffff;
    color: #8c8c8c;
  }

  @media screen and (max-width: 500px) {
    .btn {
      width: 85%;
    }

    .btn a {
      width: 100%;
      font-size: 15px;
      height: 42px;
      line-height: 42px;
    }

    .btn .goindex {
      margin-right: 0;
      margin-bottom: 20px;
    }
  }
</style>
   

