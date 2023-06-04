import 'package:bloc/bloc.dart';
import 'package:cantwait28/models/item_model.dart';
import 'package:cantwait28/repositories/items_repository.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._itemsRepository)
      : super(DetailsState(itemModel: null, errorMessage: ''));

  final ItemsRepository _itemsRepository;

  Future<void> getItemWithID({required String id}) async {
    try {
      final itemModel = await _itemsRepository.getItemsOnce(id: id);
      emit(
        DetailsState(
          itemModel: itemModel,
          errorMessage: '',
        ),
      );
    } catch (error) {
      emit(
        DetailsState(
          itemModel: null,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
