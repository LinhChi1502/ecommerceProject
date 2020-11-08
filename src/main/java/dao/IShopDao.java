package dao;

import model.Product;
import model.Shop;

import java.util.List;

public interface IShopDao {

    List<Shop> listShop();

    List<Shop> listShopLimit10();

    List<Product> listShopProduct(int shopID);

    Shop findShopById(int shopID);
}
