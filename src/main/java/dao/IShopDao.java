package dao;

import model.Shop;

import java.util.List;

public interface IShopDao {

    List<Shop> listShop();

    List<Shop> listShopLimit10();
}
