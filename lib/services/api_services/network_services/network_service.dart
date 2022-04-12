
import 'package:dio/dio.dart';
import 'package:get/get_state_manager/get_state_manager.dart' ;
import 'abstract_network_service.dart';

class NetworkService extends GetxService implements AbstractNetworkService{
   Dio _dio;
  @override
  void onInit() {
    _dio=Dio(BaseOptions(connectTimeout: 10000,receiveTimeout: 10000));
    super.onInit();
  }

  @override
  Future<Response> delete(url, {body, headers, query}) async {
    try{
      return await _dio.delete(url,data: body,queryParameters: query);
    }on DioError catch(ex){
      return null;
    }
  }

  @override
  Future<Response> get(url, {headers, query}) async {
    try{
     return await _dio.get(url,queryParameters: query);
    } on DioError catch(ex){
      return null;
    }
  }

  @override
  Future<Response> post(url, {body, headers, query}) async {
    try{
      return await _dio.post(url,data: body,queryParameters: query);
    }on DioError catch(ex){
      return null;
    }
  }

  @override
  Future<Response> put(url, {body, headers, query}) async {
   try{
     return await _dio.put(url,data: body,queryParameters: query);
   }on DioError catch(ex){
     return null;
   }
  }

}