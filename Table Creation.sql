-- 1. COUNTRY
CREATE TABLE COUNTRY (
    country_id VARCHAR(3) PRIMARY KEY,
    country_name ENUM(
        'SOUTH SUDAN',
        'DEMOCRATIC REPUBLIC OF CONGO',
        'PALESTINE',  
        'YEMEN',
        'LEBANON'
    ) NOT NULL
) ENGINE=InnoDB;

-- 2. REGION
CREATE TABLE REGION (
    region_id VARCHAR(6) PRIMARY KEY,
    region_type ENUM('urban', 'rural') NOT NULL,
    region_name VARCHAR(100) NOT NULL,
    locates_in_country_id VARCHAR(3) NOT NULL,
    FOREIGN KEY (locates_in_country_id)
        REFERENCES COUNTRY(country_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 3. PROJECT
CREATE TABLE PROJECT (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(255) NOT NULL,
    category ENUM('Financial Aid', 'Advertising Campaign', 'Education') NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    targets_sdg_indicator ENUM('1.1.1', '4.6.1', '5.4.1') NOT NULL,
    takes_place_in_region_id VARCHAR(6) NOT NULL,
    FOREIGN KEY (takes_place_in_region_id)
        REFERENCES REGION(region_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 4. INDIVIDUAL
CREATE TABLE INDIVIDUAL (
    personal_id INT PRIMARY KEY AUTO_INCREMENT,
    sex ENUM('male', 'female', 'prefer not to say') NOT NULL,
    date_of_birth DATE NOT NULL,
    lives_in_region_id VARCHAR(6) NOT NULL,
    FOREIGN KEY (lives_in_region_id)
        REFERENCES REGION(region_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 5. BUDGET
CREATE TABLE BUDGET (
    project_id INT PRIMARY KEY,
    expenditure DECIMAL(11,2) NOT NULL,
    total_budget DECIMAL(11,2) NOT NULL,
    FOREIGN KEY (project_id)
        REFERENCES PROJECT(project_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 6. SURVEY
CREATE TABLE SURVEY (
    survey_id INT PRIMARY KEY AUTO_INCREMENT,
    proficiency_in_literacy BOOLEAN NOT NULL,
    proficiency_in_numeracy BOOLEAN NOT NULL,
    employment_status ENUM('employed', 'unemployed', 'below_minimum_legal_work_age') NOT NULL,
    below_poverty_line BOOLEAN NOT NULL,
    average_time_spent_on_unpaid_domestic_and_care_work INT NOT NULL,
    survey_year YEAR NOT NULL,
    takes_by_personal_id INT NOT NULL,
    FOREIGN KEY (takes_by_personal_id)
        REFERENCES INDIVIDUAL(personal_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;
