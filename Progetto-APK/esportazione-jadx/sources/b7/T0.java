package b7;

import android.app.AlertDialog;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.ParentalControlActivity;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class T0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10232G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ ParentalControlActivity f10233H;

    public /* synthetic */ T0(ParentalControlActivity parentalControlActivity, int i8) {
        this.f10232G = i8;
        this.f10233H = parentalControlActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10232G;
        ParentalControlActivity parentalControlActivity = this.f10233H;
        switch (i8) {
            case 0:
                boolean zEquals = parentalControlActivity.f28812H.getString("pc_lock", null).equals("yes");
                ParentalControlActivity parentalControlActivity2 = parentalControlActivity.f28811G;
                if (zEquals) {
                    p000a.r.n(parentalControlActivity.f28812H, "pc_lock", "no");
                    parentalControlActivity.f28817M.setText(parentalControlActivity2.getString(R.string.xc_parental_contorl_off));
                    parentalControlActivity.f28817M.setTextColor(Color.parseColor("#70E089"));
                    z4.q0.q().g("ORT_PARENTAL_CONTROL_STATUS", "unlocked");
                } else {
                    p000a.r.n(parentalControlActivity.f28812H, "pc_lock", "yes");
                    parentalControlActivity.f28817M.setText(parentalControlActivity2.getString(R.string.xc_parental_control_on));
                    parentalControlActivity.f28817M.setTextColor(Color.parseColor("#FF5733"));
                    z4.q0.q().g("ORT_PARENTAL_CONTROL_STATUS", "locked");
                }
                ORPlayerMainActivity.f28777I0 = true;
                break;
            default:
                ParentalControlActivity parentalControlActivity3 = parentalControlActivity.f28811G;
                View viewInflate = LayoutInflater.from(parentalControlActivity3).inflate(R.layout.xciptv_dialog_parental_control, (ViewGroup) null);
                AlertDialog alertDialogCreate = new AlertDialog.Builder(parentalControlActivity3).create();
                ParentalControlActivity.f28809X = (EditText) viewInflate.findViewById(R.id.ed_old_password);
                ParentalControlActivity.f28810Y = (EditText) viewInflate.findViewById(R.id.ed_new_password);
                ((Button) viewInflate.findViewById(R.id.btn_change)).setOnClickListener(new U0(parentalControlActivity, alertDialogCreate, 0));
                Button button = (Button) viewInflate.findViewById(R.id.btn_cancel);
                button.setText("Cancel");
                button.setOnClickListener(new U0(parentalControlActivity, alertDialogCreate, 1));
                alertDialogCreate.show();
                break;
        }
    }
}
