// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_bloc.dart';


abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final List<Product> products;
  ProductSuccess({
    required this.products,
  });
}
