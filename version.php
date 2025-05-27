<?php
/**
 * KEY ACADEMY VERSION INFORMATION.
 *
 * This file defines the current version of the KEY Academy code being used.
 * This is compared against the values stored in the database to determine
 * whether upgrades should be performed (see lib/db/*.php)
 *
 * @package    core
 * @copyright  1999 onwards Martin Dougiamas (http://dougiamas.com)
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$version  = 2025063000.00;              // YYYYMMDD      = release date of your 1.0 beta
                                        //         RR    = release increments - 00 for first release
                                        //           .XX = incremental changes
$release  = 'KEY Academy 1.0beta (Build: 20250630)';    // Human-friendly version name
$branch   = '100';                      // This version's branch (1.0.0)
$maturity = MATURITY_BETA;             // Changed from ALPHA to BETA
