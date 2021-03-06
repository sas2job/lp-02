<?php
class controller_component_core_news extends component
{
    function __construct($config, $url, $component, $dbh)
    {
        parent::__construct($config, $url, $component, $dbh);
        
        $this->data['img_folder'] = 'news';
        
        $this->data['breadcrumbs'] = array(
            'labels' => array('Главная', 'Новости'),
            'hrefs' => array(SITE_URL, SITE_URL.'/'.$this->url['component'])
        );

        if (count($this->url['actions']) == 1 && $this->url['actions'][0] == 'index') {;
            $this->data['base_url'] = SITE_URL.'/'.$this->url['component'];
        } else {
            $this->data['base_url'] = SITE_URL.'/'.$this->url['component'].'/'.implode('/', $this->url['actions']);
            foreach ($this->url['actions'] as $n => $url) {
                $this->data['breadcrumbs']['hrefs'][$n+2] = $this->data['breadcrumbs']['hrefs'][$n+1].'/'.$url;
            }
        }

        $this->page['head'] = $this->add_css_file('/user_cms/modules/components/'.$this->data['img_folder'].'/front_end/views/style.css');
        $this->page['head'] .= $this->add_css('#content .article-preview img {max-width:'.$this->component_config['image_thumb_width'].'px}');
    }


    /**
    * Отображение категории (статья и дочерние элементы)
    * Если указан $parent_id = 0, то выводятся элементы, вложенные в корневую категорию
    * @param int $parent_id идентификатор категории
    * @return array готовую страницу $this->page
    */
    protected function show_category($parent_id)
    {
        $items_count = $this->model->count_childrens($parent_id);
        $items_per_page = $this->component_config['index_page_count'];
        $pages_count = ceil($items_count/$items_per_page);
        $current_page = isset($this->url['params']['page']) ? intval($this->url['params']['page']) : 0;
        if ($current_page > $pages_count) $current_page = $pages_count;
        elseif ($current_page < 1) $current_page = 1;

        $items = $this->model->fetch_childrens($parent_id, ($current_page-1)*$items_per_page, $items_per_page);
        if ($parent_id != 0) $category = $this->model->get($parent_id);

        $this->data = array_merge($this->data, compact('items_count', 'pages_count', 'current_page', 'items', 'category'));
        
        $this->page['title'] = $this->data['page_header'] = isset($category) ? $category['header'] : 'Все новости';
        $this->page['keywords'] = isset($category) ? $category['keywords'] : 'новости, новости сайта '.SITE_NAME;
        $this->page['description'] = isset($category) ? $category['description'] : 'Новости сайта '.SITE_NAME;
        $this->page['html'] = $this->load_view('category');
        return $this->page;
    }


    /**
    * Отображает статью или категорию в режиме редактирования
    * @param array $article массив с данными из записи в БД 
    * @return array готовую страницу $this->page
    */
    protected function show_article($article)
    {
        $this->data['article'] = $article;
        $this->page['title'] = $this->data['page_header'] = $article['header'];
        $this->page['keywords'] = $article['keywords'];
        $this->page['description'] = $article['description'];
        $this->page['html'] = $this->load_view('article');
        return $this->page;
    }


    /**
    * Отображает страницу ошибки 404
    * @return array готовую страницу $this->page
    */
    protected function show_404()
    {
        $this->page['title'] = 'Элемент не найден';
        $this->page['html'] = $this->load_view('404_not_found');
        return $this->page;
    }


    public function action_index()
    {
        return $this->action_else();
    }


    /**
    * Маршрутизация
    * @return array готовую страницу $this->page
    */
    public function action_else()
    {
        if (count($this->url['actions']) == 1 && $this->url['actions'][0] == 'index') {
            return $this->show_category(0); // корневая категория
        } else {
            $result = $this->model->find_by_actions($this->url['actions']);
            foreach($result['labels'] as $label) $this->data['breadcrumbs']['labels'][] = $label;
            $item = $result['item'];
            if ($item === false) return $this->show_404(); // элемент не найден
            elseif ($item['is_category'] == 0) return $this->show_article($item); // статья
            else return $this->show_category($item['id']); // категория
        }
    }
}