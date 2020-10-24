CREATE TABLE `tbl_barang` (
  `id` VARCHAR(100) NOT NULL,
  `nama_barang` VARCHAR(100) DEFAULT NULL,
  `harga` FLOAT DEFAULT NULL,
  `id_jenis` VARCHAR(100) DEFAULT NULL,
  `stok` INT(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4




CREATE TABLE `tbl_jenis` (
  `id_jenis` VARCHAR(100) NOT NULL,
  `nama` VARCHAR(100) DEFAULT NULL,
  `keterangan` TEXT DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4




SELECT
    `tbl_barang`.`id`
    , `tbl_barang`.`nama_barang`
    , `tbl_barang`.`harga`
    , `tbl_barang`.`id_jenis`
    , `tbl_jenis`.`nama`
FROM
    `db_day26`.`tbl_jenis`
    INNER JOIN `db_day26`.`tbl_barang` 
        ON (`tbl_jenis`.`id_jenis` = `tbl_barang`.`id_jenis`);
      
        
 
CREATE VIEW lap_barang AS (SELECT
    `tbl_barang`.`id`
    , `tbl_barang`.`nama_barang`
    , `tbl_barang`.`harga`
    , `tbl_barang`.`id_jenis`
    , `tbl_jenis`.`nama`
FROM
    `db_day26`.`tbl_jenis`
    INNER JOIN `db_day26`.`tbl_barang` 
        ON (`tbl_jenis`.`id_jenis` = `tbl_barang`.`id_jenis`))
        
        
        
SELECT * FROM lap_barang