function save_int_or_bool(section, key, value) {
    var filename = "the-missing-projects-where-the-road-ends.ini";

    ini_open(filename);
    ini_write_real(section, key, value);
    ini_close();
}

function load_int_or_bool(section, key) {
    var filename = "the-missing-projects-where-the-road-ends.ini";

    ini_open(filename);
    var value = ini_key_exists(section, key) 
                ? ini_read_real(section, key, 0)
                : 0;
    ini_close();

    return value;
}