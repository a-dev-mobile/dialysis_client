import 'package:dialysis/core/storage/app_storage.dart';

import 'package:dialysis/core/widget/widget.dart';
import 'package:dialysis/data_base/app_db.dart';
import 'package:dialysis/feature/search/search.dart';
import 'package:dialysis/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const path = '/search-page';
  static const name = 'search_page';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchBloc(
            storage: context.read<AppStorage>(),
            db: context.read<AppDb>(),
            router: context.read<AppRouter>(),
          )..add(const SearchEventStarted()),
        ),
      ],
      child: const _SearchView(),
    );
  }
}

class _SearchView extends StatelessWidget {
  const _SearchView();

  @override
  Widget build(BuildContext context) {
    return ClearFocus(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SearchField(),
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  buildWhen: (p, c) => p.statusSearch != c.statusSearch,
                  builder: (context, state) {
                    // print('--${state.statusSearch}');
                    if (state.statusSearch.isInitial) {
                      return const Center(
                        child: Text('введите текст поиска'),
                      );
                    }

                    // SUCCESS
                    if (state.statusSearch.isSuccess) {
                      return ListView.builder(
                        itemCount: state.testName.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(state.testName[index]),
                          );
                        },
                      );
                    }
                    if (state.statusSearch.isEmpty) {
                      return const Center(child: Text('пусто'));
                    }

                    // if (state is SearchStateError) {
                    //   return AppErrorMsg(msg: state.msg);
                    // }
                    if (state.statusSearch.isFailure) {
                      return Center(child: Text('ошибка ${state.msgError}'));
                    }

                    return const AppPageLoad();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class _BuildListProducts extends StatefulWidget {
//   const _BuildListProducts();

//   @override
//   State<_BuildListProducts> createState() => _BuildListProductsState();
// }

// class _BuildListProductsState extends State<_BuildListProducts> {
//   final controller = ScrollController();
//   final _keys = {};
//   int positionNew = 1;
//   int positionOld = 0;

//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<SearchBloc>();
//     final listViewKey = RectGetter.createGlobalKey();

//     return Expanded(
//       child: BlocConsumer<SearchBloc, SearchState>(
//         buildWhen: (p, c) =>
//             p.forceUpdateState != c.forceUpdateState ||
//             p.productsFileredLength != c.productsFileredLength,

//         listenWhen: (p, c) =>
//             p.productsFileredLength != c.productsFileredLength,

//         // при изменении категории scroll на самый вверх
//         listener: (context, state) => controller.animateTo(
//           0,
//           duration: const Duration(seconds: 1),
//           curve: Curves.ease,
//         ),

//         builder: (context, state) {
//           log('--update-list-product');

//           final listView = RectGetter(
//             key: listViewKey,
//             child: ListView.builder(
//               controller: controller,
//               padding: const EdgeInsets.only(bottom: 100),
//               itemCount: state.productsFiltered.length,
//               itemBuilder: (context, i) {
//                 final product = state.productsFiltered[i];
//                 _keys[i] = RectGetter.createGlobalKey();

//                 return RectGetter(
//                   key: _keys[i] as GlobalKey<RectGetterState>,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 8,
//                     ),
//                     child: RepaintBoundary(
//                       child: SearchItem(
//                         product: product,
//                         onDecrement: () => bloc.add(
//                           SearchEventDecrementWeight(
//                             id: product.id,
//                           ),
//                         ),
//                         onIncrement: () => bloc.add(
//                           SearchEventIncrementWeight(
//                             id: product.id,
//                           ),
//                         ),
//                         onFavorit: () => bloc.add(
//                           SearchEventSetFavorite(
//                             idProduct: product.id,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//           List<int> getVisible() {
//             /// First, get the rect of ListView, and then traver the _keys
//             /// get rect of each item by keys in _keys, and if this rect in the range of ListView's rect,
//             /// add the index into result list.
//             final rect = RectGetter.getRectFromKey(listViewKey);
//             final items = <int>[];
//             _keys.forEach((index, key) {
//               final itemRect =
//                   RectGetter.getRectFromKey(key as GlobalKey<RectGetterState>);
//               if (itemRect != null &&
//                   !(itemRect.top > rect!.bottom ||
//                       itemRect.bottom < rect.top)) {
//                 items.add(index as int);
//               }
//             });

//             /// so all visible item's index are in this _items.
//             return items;
//           }

//           return NotificationListener<ScrollUpdateNotification>(
//             // ignore: prefer-extracting-callbacks
//             onNotification: (notification) {
//               positionNew = getVisible().lastWhere(
//                 (i) => i >= 0,
//                 orElse: () => 1,
//               );

//               positionOld = bloc.state.productsFileredPosition;

//               if (positionNew != positionOld && positionNew != 0) {
//                 bloc.add(
//                   SearchEventProductsFileredPosition(index: positionNew),
//                 );
//               }

//               return true;
//             },
//             child: listView,
//           );
//         },
//       ),
//     );
//   }
// }

// class _BuildCategories extends StatelessWidget {
//   const _BuildCategories();

//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<SearchBloc>();

//     return BlocBuilder<SearchBloc, SearchState>(
//       buildWhen: (p, c) =>
//           p.isShowMenuSelectedCategory != c.isShowMenuSelectedCategory ||
//           p.productsFileredLength != c.productsFileredLength,
//       builder: (context, state) {
//         return Row(
//           children: [
//             Visibility(
//               visible: state.isShowMenuSelectedCategory,
//               child: IconButton(
//                 onPressed: () => bloc
//                   ..add(
//                     SearchEventFindSelectedCategory(
//                       context: context,
//                       isOpenPageCategories: true,
//                     ),
//                   )
//                   ..add(
//                     const SearchEventProductsFileredPosition(
//                       index: 1,
//                     ),
//                   ),
//                 icon: const Icon(Icons.menu),
//               ),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     for (var v in state.categories)
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 8,
//                         ),
//                         child: ChoiceChip(
//                           label: Text(v.name),
//                           selected: v.isActive,
//                           // ignore: prefer-extracting-callbacks
//                           onSelected: (value) {
//                             if (value) {
//                               bloc
//                                 ..add(
//                                   SearchEventFindSelectedCategory(
//                                     context: context,
//                                     idCategory: v.id,
//                                   ),
//                                 )
//                                 ..add(
//                                   const SearchEventProductsFileredPosition(
//                                     index: 1,
//                                   ),
//                                 );
//                             }
//                           },
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
