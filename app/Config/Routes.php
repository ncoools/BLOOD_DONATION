<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'Auth::index');
$routes->get('/login', 'Auth::index');
$routes->post('/auth', 'Auth::auth');
$routes->get('/dashboard', 'Dashboard::index');
$routes->get('/logout', 'Auth::logout');

// User Acounts routes
$routes->get('/users', 'Users::index');
$routes->post('users/save', 'Users::save');
$routes->get('users/edit/(:segment)', 'Users::edit/$1');
$routes->post('users/update', 'Users::update');
$routes->delete('users/delete/(:num)', 'Users::delete/$1');
$routes->post('users/fetchRecords', 'Users::fetchRecords');

// Donor routes
$routes->get('/donor', 'Donor::index');
$routes->post('donor/save', 'Donor::save');
$routes->get('donor/edit/(:segment)', 'Donor::edit/$1');
$routes->post('donor/update', 'Donor::update');
$routes->delete('donor/delete/(:num)', 'Donor::delete/$1');
$routes->post('donor/fetchRecords', 'Donor::fetchRecords');

// Bloodtype routes
$routes->get('/bloodtype', 'Bloodtype::index');
$routes->post('bloodtype/save', 'Bloodtype::save');
$routes->get('bloodtype/edit/(:segment)', 'Bloodtype::edit/$1');
$routes->post('bloodtype/update', 'Bloodtype::update');
$routes->delete('bloodtype/delete/(:num)', 'Bloodtype::delete/$1');
$routes->post('bloodtype/fetchRecords', 'Bloodtype::fetchRecords');

// Barangay routes
$routes->get('/barangay', 'Barangay::index');
$routes->post('barangay/save', 'Barangay::save');
$routes->get('barangay/edit/(:segment)', 'Barangay::edit/$1');
$routes->post('barangay/update', 'Barangay::update');
$routes->delete('barangay/delete/(:num)', 'Barangay::delete/$1');
$routes->post('barangay/fetchRecords', 'Barangay::fetchRecords');

// Activities routes
$routes->get('/activities', 'Activities::index');
$routes->post('activities/save', 'Activities::save');
$routes->get('activities/edit/(:segment)', 'Activities::edit/$1');
$routes->post('activities/update', 'Activities::update');
$routes->delete('activities/delete/(:num)', 'Activities::delete/$1');
$routes->post('activities/fetchRecords', 'Activities::fetchRecords');


// Logs routes for admin
$routes->get('/log', 'Logs::log');
$routes->get('dashboard/liveData', 'Dashboard::liveData');