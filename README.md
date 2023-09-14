# Converter

## Функциональное тз
- Возможность ввести число и увидеть сконвертированное значение
- Выбор валюты для обоих чисел
- Свап валют и значений
- Вводить можно в оба поля
- Рассчитывается то поле, у которого устарело состояние и способно быть рассчитано
- (есть тест) При взятии данных из сети данные дублируютя в локальное хранилище 
- (есть тест) При невозможности взять данные из сети данные берутся из локального хранилища
- (есть тест) Значения сумм конвертируются в соответствии с данными рейтов

От себя были добавлены следующий функционал вне тз:
- валидация числа
- дебансинг на конвертирование при изменении числа
- логгирование
- Navigator 2

## Стэк
- Локальная бд - isar
- Клиент - dio
- А также: fvm, bloc, rxdart, freezed, auto_router, injectable, mockito, flutter_dotenv

## От себя
Токен для https://exchangeratesapi.io/ не опубликован. Сгенерируйте и вставьте его в env/.env, в поле с названием EXCHANGE_KEY

<img src="https://github.com/ChaserVasya/converter/assets/74578917/599098df-a365-4653-a2fc-d30ab8bf5051" alt="drawing" width="200"/>
<img src="https://github.com/ChaserVasya/converter/assets/74578917/2e1ff256-cf26-46c2-abc3-b5f10170423a" alt="drawing" width="200"/>
<img src="https://github.com/ChaserVasya/converter/assets/74578917/608089cc-07e6-4a4f-8b9c-9c65594c3dd2" alt="drawing" width="200"/>
<img src="https://github.com/ChaserVasya/converter/assets/74578917/dd6b034e-465e-4c89-80ec-a26877acdc69" alt="drawing" width="200"/>
