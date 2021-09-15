INSERT INTO users (name, email, password)
VALUES ('Johnny Labedzki', 'fake@fake23.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.')
('Agata Labedzki', 'evenmorefake@fake23.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.')
('Mr. Potatoe Head', 'potatoes@head.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.')
('Elon Musk', 'trollingtwitter@tesla.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.')
('Jeff Bezos', 'welfareassistance@needscash.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.')
('Lousia Meyer', 'lousiameyer@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Speed Lamp', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 93061, 2, 2, 'Canada', '4011 Dunbar St', 'Vancouver', 'British Columbia', 'V4J 4G3', 'true')
(3, 'Idaho Potatoe', 'description', 'https://images.pexels.com/photos/2076739/pexels-photo-2076739.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2076739/pexels-photo-2076739.jpeg', 85234, 3, 3, 'Canada', '651 Nami Road', 'Bohbatev', 'Alberta', '83680', 'true')
(4, 'Tesla Mansion', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 46058, 6, 5, 'Canada', '1650 Hejto Center', 'Genwezuj', 'Newfoundland And Labrador', '44583', 'true')
(4, 'Musky Estate', 'description', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg', 82640, 5, 5, 'Canada', '513 Powov Grove', 'Jaebvap', 'Ontaria', '81059', 'true')
(5, 'The Amazong House', 'description', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg', 2358, 1, 1, 'Canada', '340 Dokto Park', 'Upfufa', 'Nova Scotia', '29045', 'true')
(5, 'Tax Reduction Plaza', 'description', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg', 34291, 4, 4, 'Canada', '834 Buwmi Road', 'Burnaby', 'British Columbia', '58224', 'true')
(6, 'Game Fill', 'description', 'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg', 13644, 3, 2, 'Canada', '2555 Osler Street', 'Vancouver', 'British Columbia', 'V6J 4N3', 'true');

INSERT INTO reservations (property_id, guest_id, start_date, end_date)
VALUES (2, 3, '2018-09-11', '2018-09-26')
(2, 2, '2019-01-04', '2019-02-01')
(1, 4, '2021-10-01', '2021-10-14')
(3, 5, '2014-10-21', '2014-10-21')
(3, 4, '2016-07-17', '2016-08-01')
(4, 1, '2018-05-01', '2018-05-27')
(6, 2, '2022-10-04', '2022-10-23')
(5, 1, '2015-09-13', '2015-09-26');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (2, 5, 8, 3, 'message')
(1, 4, 1, 4, 'message')
(6, 1, 2, 4, 'message')
(3, 6, 5, 4, 'message')
(4, 2, 7, 5, 'message')
(4, 3, 4, 5, 'message')
(5, 6, 3, 4, 'message');