abstract class Faliure{
  final String error;

  Faliure(this.error);
}

class ServerError extends Faliure{
  ServerError(super.error);

}