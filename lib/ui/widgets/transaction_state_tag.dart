import 'package:flutter/widgets.dart';
import 'package:natrium_wallet_flutter/appstate_container.dart';
import 'package:natrium_wallet_flutter/localization.dart';
import 'package:natrium_wallet_flutter/styles.dart';

enum TransactionStateOptions {
  PENDING,
}

class TransactionStateTag extends StatelessWidget {
  final TransactionStateOptions transactionState;

  TransactionStateTag({Key key, this.transactionState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
      child: Text(
        this.transactionState == TransactionStateOptions.PENDING
            ? AppLocalization.of(context).pending
            : "Tag",
        style: AppStyles.tagText(context),
      ),
      decoration: BoxDecoration(
        color: StateContainer.of(context).curTheme.text10,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}