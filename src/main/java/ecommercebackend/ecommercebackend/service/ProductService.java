package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.CompleteProduct;
import ecommercebackend.ecommercebackend.entity.Image;
import ecommercebackend.ecommercebackend.entity.Product;
import ecommercebackend.ecommercebackend.entity.ProductImage;
import ecommercebackend.ecommercebackend.repository.ImageRepository;
import ecommercebackend.ecommercebackend.repository.ProductImageRepository;
import ecommercebackend.ecommercebackend.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ProductService implements CrudService<Product> {

    private final ProductRepository productRepository;
    private final ProductImageRepository productImageRepository;
    private final ImageRepository imageRepository;


    @Override
    public List<Product> getAllItem() {
        return productRepository.findAll();
    }

    public List<Product> getAllItemByCategoryId(int id) {
        return productRepository.findAllByIdCategory(id);
    }

    public CompleteProduct getCompleteItemById(int product_id) {
        ProductImage productImage = productImageRepository.getByProductId(product_id);
        Optional<Product> product = productRepository.findById(productImage.getProductId());
        Optional<Image> image = imageRepository.findById(productImage.getImageId());
        if (product.isPresent() && image.isPresent()) {
            Product product1 = product.get();
            Image image1 = image.get();

            return new CompleteProduct( product1.getId(),
                    product1.getIdCategory(),
                    product1.getName(),
                    product1.getDescription(),
                    product1.getStock(),
                    product1.getPrice(),
                    image1.getImage()
            );
        }
        return null;
//        List<Product> products = productRepository.findAll();
//        List<Image> images = imageRepository.findAll();
//
//        List<CompleteProduct> completeProducts = new ArrayList<>();
//
//        Product product1 = new Product();
//        Image image1 = new Image();
//
//        int i = 0;
//        for (ProductImage productImage : productImages) {
//
//            for (Product product : products) {
//                if (product.getId() == productImage.getProductId()) {
//                    product1 = product;
//                }
//            }
//
//            for (Image image : images) {
//                if (image.getId() == productImage.getImageId()) {
//                    image1 = image;
//                }
//            }
//            CompleteProduct completeProduct = new CompleteProduct(
//                    product1.getId(),
//                    product1.getIdCategory(),
//                    product1.getName(),
//                    product1.getDescription(),
//                    product1.getStock(),
//                    product1.getPrice(),
//                    image1.getImage()
//            );
//            completeProducts.add(completeProduct);
//        }
//        return completeProducts;
//    }
//    private static CompleteProduct getCompleteProduct(Optional<Product> product, Optional<Image> image) {
//        CompleteProduct completeProduct = new CompleteProduct();
//
//        if (product.isPresent() && image.isPresent()) {
//            Product product1 = product.get();
//            completeProduct = new CompleteProduct(
//                    product1.getId(),
//                    product1.getIdCategory(),
//                    product1.getName(),
//                    product1.getDescription(),
//                    product1.getStock(),
//                    product1.getPrice(),
//                    image.get().getImage()
//                    );
//        }
    }

    @Override
    public Optional<Product> getItemById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public Product addItem(Product item) {
        return productRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        productRepository.deleteById(id);
    }

    @Override
    public Product updateItem(Product item) {
        return productRepository.save(item);
    }


}
