//* To create a new state, we need to create a new class that extends the WeatherState class. We will create three states: ' WeatherLoading ', ' WeatherSuccess ', and ' WeatherFailure ' .

abstract class WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {}

class WeatherFailure extends WeatherState {}
