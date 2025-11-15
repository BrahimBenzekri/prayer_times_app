import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../services/location_storage_service.dart';

part 'location_provider.g.dart';

@riverpod
class LocationState extends _$LocationState {
  @override
  Future<UserLocation?> build() async {
    final locationStorageService = ref.watch(locationStorageServiceProvider);
    return await locationStorageService.getUserLocation();
  }

  void updateLocation(UserLocation? location) {
    state = AsyncData(location);
  }
}
