import '../../../../../core/helpers/spacing.dart';
import '../../../logic/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'specializations_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/themes/text_styles.dart';
import '../../../data/models/specializations_response_model.dart';

class SpecialtyListView extends StatefulWidget {
  const SpecialtyListView({super.key, required this.specializationList});
  final List<SpecializationsData> specializationList;

  @override
  State<SpecialtyListView> createState() => _SpecialtyListViewState();
}

class _SpecialtyListViewState extends State<SpecialtyListView> {
  var selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Doctor Speciality', style: TextStyles.font18DarkBlueSemiBold),
            const Spacer(),
            Text('See All', style: TextStyles.font12BlueRegular),
          ],
        ),
        verticalSpacing(16.h),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.specializationList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSpecializationIndex = index;
                  });
                  context.read<HomeCubit>().getDoctorsList(
                    specializationId: widget.specializationList[index].id!,
                  );
                },

                child: SpecializationsListViewItem(
                  selectedIndex: selectedSpecializationIndex,
                  itemIndex: index,
                  specializationsData: widget.specializationList[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
