part of '../my_collection.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    final bloc = Provider.of<CollectionBloc>(context, listen: false);
    bloc.add(FetchCollectionEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.kMediumBgColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PageHeading(title: 'My Collection'),
                Image.asset('assets/images/png/notification.png'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 16.w),
              child: BlocBuilder<CollectionBloc, CollectionStates>(
                builder: (context, state) {
                  if (state.fetchCollectionState
                          is FetchCollectionLoadingState ||
                      state.fetchCollectionState
                          is FetchCollectionDefaultState) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: AppTheme.kPrimaryColor,
                      ),
                    );
                  } else if (state.fetchCollectionState
                      is FetchCollectionFailureState) {
                    return Center(
                      child: Text(
                        'Error loading collection: ${(state.fetchCollectionState as FetchCollectionFailureState).message}',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppTheme.kGrey1Color,
                        ),
                      ),
                    );
                  } else if (state.fetchCollectionState
                      is FetchCollectionSuccessState) {
                    // Safe cast after type check
                    final successState =
                        state.fetchCollectionState
                            as FetchCollectionSuccessState;
                    CollectionModel collection = successState.collection!;

                    return GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 168 / 313,
                      children:
                          collection.bottles.map<Widget>((item) {
                            return CollectionItem(
                              item: item,
                              onTap: () {
                                context.go(
                                  '${AppRoutes.details}/${item.id}',
                                  extra: {
                                    'collectionName': collection.collectionName,
                                    'item': item,
                                  },
                                );
                              },
                            );
                          }).toList(),
                    );
                  } else {
                    // Handle any other unknown state
                    return Center(
                      child: Text(
                        'Unknown state: ${state.fetchCollectionState.runtimeType}',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppTheme.kGrey1Color,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
