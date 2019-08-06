<?php
namespace {
	use SilverStripe\CMS\Model\SiteTree;
	use Page;  
	use PageController;
	use SilverStripe\Forms\TextField;
	use SilverStripe\Forms\TextareaField;
	use SilverStripe\Forms\HTMLEditorField;
	use SilverStripe\AssetAdmin\Forms\UploadField;
	use SilverStripe\Assets\Image;
	use SilverStripe\Forms\TabSet;
	use SilverStripe\Forms\Tab;

	class HomePage extends Page {

		private static $db = [
			'F2Header' => 'Text',
			'F2Desc' => 'Text',
			'F2BtnLink' => 'Text',
			'F2BtnLbl' => 'Text',
		];

		private static $has_one = [
			'F2BG' => Image::class,
		];

		private static $allowed_children = "none";

		private static $defaults = array(
			'PageName' => 'Home Page',
			'MenuTitle' => 'Home',
			'ShowInMenus' => true,
			'ShowInSearch' => true,
		);

		public function getCMSFields() {
			$fields = parent::getCMSFields();

			#Remove by tab
			$fields->removeFieldFromTab('Root.Main', 'Content');
			
						/*
			* Frame 2
			*/
			$fields->addFieldToTab('Root.Frame 2', new TabSet('Frame2Sets',
				new Tab('Content',
					TextField::create('F2Header', 'Header'),
					TextareaField::create('F2Desc', 'Description')	
				),
				new Tab('Background & Button',
					$uploadf2 = UploadField::create('F2BG','Background'),
					TextField::create('F2BtnLink', 'Button Link'),
					TextField::create('F2BtnLbl', 'Button Text')
				)
			));	
			# SET FIELD DESCRIPTION 
			$uploadf2->setDescription('Max file size: 2MB | Dimension: 1366px x 768px');
			# Set destination path for the uploaded images.
			$uploadf2->setFolderName('homepage/frame-2');
			return $fields;
		}
	}

	class HomePageController extends PageController {

	}
}
