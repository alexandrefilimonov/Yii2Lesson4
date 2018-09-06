USE world;
CREATE TABLE IF NOT EXISTS `user` 
(
  `id` int(11) NOT NULL AUTO_INCREMENT,
   `author` varchar(30) NOT NULL,
   `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`) 	
) ENGINE=InnoDB  DEFAULT CHARSET=UTF8MB4 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `note` 
(
  `id` int(11) NOT NULL AUTO_INCREMENT,
   `note_info` varchar(30) NOT NULL,
   `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`) 	
) ENGINE=InnoDB  DEFAULT CHARSET=UTF8MB4 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `access` 
(
  `id` int(11) NOT NULL AUTO_INCREMENT,
   `note_id` int(11) NOT NULL,
   `user_id` int(11) NOT NULL,
   `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`), 
   FOREIGN KEY (`note_id`)
        REFERENCES note(`id`)
        ON DELETE CASCADE, 
   FOREIGN KEY (`user_id`)
        REFERENCES user(`id`)
        ON DELETE CASCADE 		
) ENGINE=InnoDB  DEFAULT CHARSET=UTF8MB4 AUTO_INCREMENT=6 ;

