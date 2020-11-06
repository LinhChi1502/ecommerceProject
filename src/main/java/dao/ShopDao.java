package dao;

import model.Shop;

import java.util.List;

public interface ShopDao {

    List<Shop> listShop();

    List<Shop> listShopLimit10();
}
