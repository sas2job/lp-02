<!DOCTYPE html>
<html lang="ru">
<head>
  [head]
  <!-- <meta charset="utf-8"> --> <!-- шаблон -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <!-- <title>Bootstrap 101 Template</title> --> <!-- шаблон -->

  <!-- Bootstrap -->
  <link href="<?=THEME_URL?>/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="<?=THEME_URL?>/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="<?=THEME_URL?>/css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    <div class="container" id="top-menu">
      <div class="row">
        <nav class="navbar navbar-expand-lg navbar-light bg-light col-12">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <a class="navbar-brand" href="#"><?=SITE_NAME?></a>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="#block2">Цены</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#block4">Гарантии</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#block6">Схема сотрудничества</a>
              </li>
            </ul>
            <a class="navbar-brand tel" href="tel:<?=SITE_PHONE_F?>"><?=SITE_PHONE?></a>
            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#call-order">Заказать звонок</button>
          </div>
        </nav>
      </div>
    </div>

    <div class="container" id="block1">
      <div class="row align-items-center">
        <div class="col-sm-6 d-none d-sm-block"><img src="<?=THEME_URL?>/images/sale.png" alt="Распродажа"></div>
        <div class="col-sm-6 main-text">
          <h2>Супер предложение!</h2>
          <h4>Небольшое пояснение для него</h4>
          <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#order">Получить предложение</button>
        </div>
      </div>
    </div>

    <div class="container c" id="counts">
      <div class="row">
        <div class="col-sm-3">
          <div class="count">10</div>
          <div class="count-text">проектов</div>
        </div>
        <div class="col-sm-3">
          <div class="count">1000%</div>
          <div class="count-text">прибыль</div>
        </div>
        <div class="col-sm-3">
          <div class="count">1</div>
          <div class="count-text">довольный клиент за 15 лет</div>
        </div>
        <div class="col-sm-3">
          <div class="count">54%</div>
          <div class="count-text">возвращаются</div>
        </div>
      </div>
    </div>

    <div class="container-fluid c" id="block2">
      <div class="row">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h2 class="col-12">Наши услуги</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
          </div>
        </div>
        <div class="col-12 bricks">
          <div class="container">
            <div class="row">
              <div class="col-md-4 tarif">
                <div>
                  <h3>Тариф</h3>
                  <h2 class="header">Раз</h2>
                  <p>Описание тарифа</p>
                  <h2 class="price">12 000 р</h2>
                </div>
              </div>
              <div class="col-md-4 tarif">
                <div>
                  <h3>Тариф</h3>
                  <h2 class="header">Два</h2>
                  <p>Описание тарифа</p>
                  <h2 class="price">12 000 р</h2>
                </div>
              </div>
              <div class="col-md-4 tarif">
                <div>
                  <h3>Тариф</h3>
                  <h2 class="header">Три</h2>
                  <p>Описание тарифа</p>
                  <h2 class="price">12 000 р</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container c" id="block3">
      <div class="row justify-content-center">
        <h2 class="col-12 c">Подберем оптимальное решение по выгодной цене</h2>

        <form class="form-inline c">
          <label class="sr-only" for="inlineFormInputName2">Имя</label>
          <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Василий Иваныч">
          <label class="sr-only" for="inlineFormInputGroupUsername2">Телефон</label>
          <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputGroupUsername2" placeholder="+7 900 111-11-11">
          <button type="submit" class="btn btn-danger mb-2" data-toggle="modal" data-target="#order">Отправить</button>
          <div class="form-check mb-2 mr-sm-2 ml-sm-2">
            <input class="form-check-input" type="checkbox" id="inlineFormCheck">
            <label class="form-check-label" for="inlineFormCheck">
              Согласен на обработку персональных данных
            </label>
          </div>
        </form>
      </div>
    </div>

    <div class="container-fluid c" id="block4">
      <div class="row">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h2 class="col-12">Гарантии</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
          </div>
        </div>
        <div class="col-12 grey">
          <div class="container">
            <div class="row">
              <div class="col-md-4 tarif">
                <div>
                  <h3>Гарантия</h3>
                  <h2 class="header">Факт</h2>
                  <p>Описание тарифа</p>
                  <h2 class="price">12 000 р</h2>
                </div>
              </div>
              <div class="col-md-4 tarif">
                <div>
                  <h3>Гарантия</h3>
                  <h2 class="header">Факт</h2>
                  <p>Описание тарифа</p>
                  <h2 class="price">12 000 р</h2>
                </div>
              </div>
              <div class="col-md-4 tarif">
                <div>
                  <h3>Гарантия</h3>
                  <h2 class="header">Факт</h2>
                  <p>Описание тарифа</p>
                  <h2 class="price">12 000 р</h2>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid c" id="block5">
      <div class="row">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h2 class="col-12">Наши сотрудники - эксперты в своём деле</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
          </div>
        </div>
        <div class="col-12 bricks">
          <div class="container">
            <div class="row">
              <div class="col-md-4 tarif">
                <div>
                  <h3>Вася</h3>
                  <h2 class="header">Иванов</h2>
                  <p>Должность</p>
                  <img src="<?=THEME_URL?>/images/personal.png" width="256" height="256" alt="Вася">
                </div>
              </div>
              <div class="col-md-4 tarif">
                <div>
                  <h3>Петя</h3>
                  <h2 class="header">Петров</h2>
                  <p>Должность</p>
                  <img src="<?=THEME_URL?>/images/personal.png" width="256" height="256" alt="Петя">
                </div>
              </div>
              <div class="col-md-4 tarif">
                <div>
                  <h3>Коля</h3>
                  <h2 class="header">Сидоров</h2>
                  <p>Должность</p>
                  <img src="<?=THEME_URL?>/images/personal.png" width="256" height="256" alt="Коля">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid c" id="block6">
      <div class="row">

        <div class="container">
          <div class="row">

            <div class="col-12">
              <h2 class="col-12">У нас простейшая схема сотрудничества</h2>
              <p>Всё очень просто и легко. Если позвоните то мы с радостью расскажем.</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>

          </div>
        </div>
        <div class="col-12 beach">
          <div class="container">
            <div class="row">
              <div class="col-md-4 tarif">
                <div>
                  <h3>Порядок работы</h3>
                  <ul>
                    <li>Шаг 1 ...</li>
                    <li>Шаг 2 ...</li>
                    <li>Шаг 3 ...</li>
                    <li>Шаг 4 ...</li>
                    <li>Шаг 5 Мы работаем, Вы отдыхаете</li>
                  </ul>
                  <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#call-order">Заказать звонок</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container" id="block7">
      <div class="row">
        <div class="col-sm-4">
          <i class="fa fa-phone"></i> +7 (1234) 111-11-11 <br>
          <i class="fa fa-map-marker"></i> Вологда, ул. Щетинина, д. 20, офис 22 <br>
        </div>
        <div class="col-sm-4 c">
          Еще контакты или виджет соц сетей
        </div>
        <div class="col-sm-4 r">
          <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#call-order">Заказать звонок</button>
        </div>
      </div>
    </div>

    <div class="container footer" id="block8">
      <div class="row">
        <div class="col-sm-4">
          Название проекта. Виды деятельности.
        </div>
        <div class="col-sm-4">
          Счетчики
        </div>
        <div class="col-sm-4">
          Разработка сайта - sas2job
        </div>

      </div>
    </div>

    <!-- Modal call-order-->
    <div class="modal fade" id="call-order" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Заказ звонка</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            {plugin:feedback=48}
<!--             <div class="form-group">
              <label for="exampleInputEmail1">Ваш телефон</label>
              <input type="tel" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="+7 999 999-99-99">
            </div> -->
          </div>
<!--           <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Жду звонка!</button>
          </div> -->
        </div>
      </div>
    </div>

    <!-- Modal order-->
    <div class="modal fade" id="order" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Запрос на ...</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            {plugin:feedback=49}            
<!--             <div class="form-group">
              <label for="exampleInputEmail1">Как вас зовут</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Василий Петрович">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Ваш телефон</label>
              <input type="tel" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="+7 999 999-99-99">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Какие задачи хотите нам поставить?</label>
              <textarea class="form-control"></textarea>
            </div> -->                        
          </div>
          <div class="modal-footer">
            <!-- <button type="button" class="btn btn-primary">Отправить</button> -->
          </div>
        </div>
      </div>
    </div>    
    <a id="back-to-top" href="#" class="btn btn-primary" role="button" title="Вверх">
      <i class="fa fa-angle-up" aria-hidden="true"></i>
    </a>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?=THEME_URL?>/js/bootstrap.min.js"></script>

     <script> //Анимация плавного скролинга
      $(document).ready(function(){
        $('#top-menu .navbar-nav a').click(function(){ // ловим клик по ссылке с классом
          var scroll_el = $(this).attr('href'); // возьмём содержимое атрибута href, должен быть селектором, т.е. например начинаться с # или .
          $('#top-menu .navbar-nav li').attr("class","nav-item");
          $(this).parent().attr("class","nav-item current active");
            if ($(scroll_el).length !=0) { //проверим существование элемента, чтобы избежать ошибки
              $('html, body').animate({scrollTop: $(scroll_el).offset().top -100}, 500); //анимируем скролинг к элементу scroll_el 
            }
          return false; //выключаем стандартное действие  
        });
      });

      $(document).ready(function(){
        $(window).scroll(function (){
          if ($(this).scrollTop() > 200) {
            $('#back-to-top').fadeIn();
          } else {
            $('#back-to-top').fadeOut();
          }
        });
        // scroll body to 0px on click
        $('#back-to-top').click(function (){
          $('body,html').animate({
            scrollTop: 0
          }, 800);
          return false;
        });
      }); 

      // Показываем модальное окно если есть ошибки заполнения
      window.addEventListener('load', function(){
        if (document.querySelector('#order .text-danger, #order .alert')) $('#order').modal('show')
        if (document.querySelector('#call-order .text-danger, #call-order .alert')) $('#call-order').modal('show')
        })    
    </script>
  </body>
</html>