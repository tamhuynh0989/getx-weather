class Result<T> with SealedResult<T> {}

class Success<T> extends Result<T> {
  Success(this.data);

  T data;
}

class Error<T> extends Result<T> {
  Error(this.errorMessage, this.code);

  String errorMessage;
  String code;
}

abstract class SealedResult<T> {
  R? when<R>({
    R? Function(T)? success,
    R? Function(String, String)? error,
  }) {
    if (this is Success<T>) {
      return success?.call((this as Success).data);
    }
    if (this is Error<T>) {
      return error?.call(
          (this as Error<T>).errorMessage, (this as Error<T>).code);
    }
    throw new Exception('「ここまで来たのなら、クラスを再生成するのを忘れていたのではないですか?」'
        'flutter パッケージを実行してみてください pub run build_runner build');
  }
}
