/* eslint-disable */
import axios, { AxiosResponse, AxiosError } from 'axios';
enum UserApis {
  gUserListUrl = '/api/users',
}

function requestResolveFn(res: AxiosResponse<any>) {
  const { data } = res;
  if (data && data.code === 200) {
    return data.data;
  } else {
    window.alert('接口出错了');
  }
};

function requestRejectFn(error: AxiosError) {
  return error;
};

export function getUserList() {
  return axios.get(UserApis.gUserListUrl).then((res) => {
    return requestResolveFn(res);
  }).catch((error) => {
    return requestRejectFn(error);
  });
}
