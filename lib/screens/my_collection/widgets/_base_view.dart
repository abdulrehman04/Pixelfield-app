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
                        'Error loading collection: ${state.fetchCollectionState.message}',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppTheme.kGrey1Color,
                        ),
                      ),
                    );
                  }
                  return GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 168 / 313,
                    children:
                        (state.fetchCollectionState
                                as FetchCollectionSuccessState)
                            .collection!
                            .bottles
                            .map<Widget>((item) {
                              return InkWell(
                                onTap: () {
                                  context.go('${AppRoutes.details}/${item.id}');
                                },
                                child: Container(
                                  color: AppTheme.klightBgColor,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 68,
                                        child: Image.asset(item.image),
                                      ),
                                      Expanded(
                                        flex: 32,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            left: 16.w,
                                            bottom: 16.h,
                                            right: 16.w,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '${item.name} #${item.id}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge
                                                    ?.copyWith(
                                                      color:
                                                          AppTheme.kGrey1Color,
                                                    ),
                                              ),
                                              Text(
                                                '(${item.bottleNumber})',
                                                style: Theme.of(
                                                  context,
                                                ).textTheme.bodySmall?.copyWith(
                                                  color: AppTheme.kGrey1Color,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })
                            .toList(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
