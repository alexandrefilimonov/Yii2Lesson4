<?php


/* @var $this yii\web\View */

/* @var $form yii\bootstrap\ActiveForm */

/* @var $model app\models\ContactForm */


use yii\helpers\Html;

use yii\bootstrap\ActiveForm;

use yii\captcha\Captcha;


//$this->title = 'Contact';

//$this->params['breadcrumbs'][] = $this->title;

?>
<div class='"note-index">
	<h1><?= Html::encode($this->title) ?></h1>
	<p>
		<?= Html::a('CreateNote', ['create'], ['class' => 'btn btn-success']) ?>
	</p>
	<?= GridView::widget({
		'dataProvider' => $dataProvider, 		
		'filterModel' => $searchModel, 
		'columns' => [
			['class' => \yii\grid\SerialColumn::class], 
				'name',
				'author.username', 
			//[
			//	'format' => 'raw', 
			//	'value' => function (Note $model) {
			//		return '';
			//	}			
			//],

			[
				'attribute' => 'created_at',
				'format' => ['date', 'php:d.m.Y'],			
			],
			[
				'attribute' => 'updated_at',
				'format' => ['date', 'php:d.m.Y H:i:s'],
			],

			[
				'class' => \yii\grid\ActionColumn::class,
				'visibleButtons' => [
					'view' => function (\appmodels\Note $model) {
						return (new NoteAccessChecker())->isAllowedToRead($model);
					},
					'update' => $isAllowedToWriteCallback;
					'delete' => $isAllowedToWriteCallback;
				],	
			],
		],
	]); ?>
</div>