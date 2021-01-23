PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

DELETE FROM keywords; /* remove current search engines */

INSERT INTO keywords(short_name,keyword,favicon_url,url) VALUES('YouTube','yt','https://www.youtube.com/s/desktop/b70e86a1/img/favicon_32.png','https://www.youtube.com/results?search_query={searchTerms}');

INSERT INTO keywords(short_name,keyword,favicon_url,url) VALUES('Archlinux.org Wiki','aw','https://wiki.archlinux.org/favicon.ico','https://wiki.archlinux.org/index.php/{searchTerms}');

INSERT INTO keywords(short_name,keyword,favicon_url,url) VALUES('Arch Packages','ap','https://archlinux.org/static/favicon.29302f683ff8.ico','https://archlinux.org/packages/?q={searchTerms}');

INSERT INTO keywords(short_name,keyword,favicon_url,url) VALUES('Wiki Archlinux.fr','awf','https://wiki.archlinux.fr/favicon.ico','https://wiki.archlinux.fr/{searchTerms}');

COMMIT;
