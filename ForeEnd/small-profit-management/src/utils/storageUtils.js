import store from 'store'
import moment from "moment";
import {message} from "antd";


const USER_KEY = 'USER_KEY'
const WEATHER_KEY = 'WEATHER_KEY'
const LOGIN_EXPIRED='LOGIN_EXPIRED'
const PRODUCT_CURRENT_PAGE='PRODUCT_CURRENT_PAGE'

//过期时间 3天后
const EXPIRATION_TIME=moment(new Date()).add(2, 'days');

export default {

  saveWeather(nowWeather) {
    store.set(WEATHER_KEY, nowWeather)
  },
  getWeather() {
    return store.get(WEATHER_KEY) || ''
  },
  saveUser(user) {
    user.expirationTime=EXPIRATION_TIME
    store.set(USER_KEY,user)
  },
  getUser() {
    const user=store.get(USER_KEY) || {}
    if(moment(user.expirationTime)<moment(new Date())){
      sessionStorage.setItem(LOGIN_EXPIRED,JSON.stringify(true));
      window.location.replace('/login')
      this.removeUser();
      return {}
    }
    return user
  },
  removeUser() {
    store.remove(USER_KEY)
    // store.clearAll();
  },

  getLoginExpired(){
    if (sessionStorage.getItem(LOGIN_EXPIRED)) {
      sessionStorage.removeItem(LOGIN_EXPIRED)
      return true
    }
    return false
  },
  setProductPagination(current,pageSize){
    const pagination={
      current:current,
      pageSize:pageSize,
    }
    store.set(PRODUCT_CURRENT_PAGE,pagination)
  },
  getProductPagination(current,pageSize){
    return store.get(PRODUCT_CURRENT_PAGE)
  }
}