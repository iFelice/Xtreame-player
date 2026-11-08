package b7;

import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import pe.hf.black20.ChannelPickerActivity;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class H implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10023G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ ChannelPickerActivity f10024H;

    public /* synthetic */ H(ChannelPickerActivity channelPickerActivity, int i8) {
        this.f10023G = i8;
        this.f10024H = channelPickerActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10023G;
        int i9 = 2;
        int i10 = 1;
        ChannelPickerActivity channelPickerActivity = this.f10024H;
        switch (i8) {
            case 0:
                int i11 = channelPickerActivity.f28486E0;
                if (i11 > 1 && i11 < 32) {
                    int i12 = i11 - 1;
                    channelPickerActivity.f28486E0 = i12;
                    channelPickerActivity.f28537z0.setText(String.valueOf(i12));
                    String strValueOf = String.valueOf(channelPickerActivity.f28486E0);
                    channelPickerActivity.f28518g0 = strValueOf;
                    channelPickerActivity.b(channelPickerActivity.f28520i0, channelPickerActivity.f28519h0, strValueOf, channelPickerActivity.f28521j0, channelPickerActivity.f28522k0);
                    break;
                }
                break;
            case 1:
                int i13 = channelPickerActivity.f28486E0;
                if (i13 < 31) {
                    int i14 = i13 + 1;
                    channelPickerActivity.f28486E0 = i14;
                    channelPickerActivity.f28537z0.setText(String.valueOf(i14));
                    String strValueOf2 = String.valueOf(channelPickerActivity.f28486E0);
                    channelPickerActivity.f28518g0 = strValueOf2;
                    channelPickerActivity.b(channelPickerActivity.f28520i0, channelPickerActivity.f28519h0, strValueOf2, channelPickerActivity.f28521j0, channelPickerActivity.f28522k0);
                }
                break;
            case 2:
                int i15 = channelPickerActivity.f28487F0;
                if (i15 > 0 && i15 < 24) {
                    int i16 = i15 - 1;
                    channelPickerActivity.f28487F0 = i16;
                    channelPickerActivity.f28482A0.setText(String.valueOf(i16));
                    String strValueOf3 = String.valueOf(channelPickerActivity.f28487F0);
                    channelPickerActivity.f28521j0 = strValueOf3;
                    channelPickerActivity.b(channelPickerActivity.f28520i0, channelPickerActivity.f28519h0, channelPickerActivity.f28518g0, strValueOf3, channelPickerActivity.f28522k0);
                    break;
                }
                break;
            case 3:
                int i17 = channelPickerActivity.f28487F0;
                if (i17 < 23) {
                    int i18 = i17 + 1;
                    channelPickerActivity.f28487F0 = i18;
                    channelPickerActivity.f28482A0.setText(String.valueOf(i18));
                    String strValueOf4 = String.valueOf(channelPickerActivity.f28487F0);
                    channelPickerActivity.f28521j0 = strValueOf4;
                    channelPickerActivity.b(channelPickerActivity.f28520i0, channelPickerActivity.f28519h0, channelPickerActivity.f28518g0, strValueOf4, channelPickerActivity.f28522k0);
                }
                break;
            case 4:
                int i19 = channelPickerActivity.f28489G0;
                if (i19 > 0 && i19 < 60) {
                    int i20 = i19 - 1;
                    channelPickerActivity.f28489G0 = i20;
                    channelPickerActivity.f28483B0.setText(String.valueOf(i20));
                    String strValueOf5 = String.valueOf(channelPickerActivity.f28489G0);
                    channelPickerActivity.f28522k0 = strValueOf5;
                    channelPickerActivity.b(channelPickerActivity.f28520i0, channelPickerActivity.f28519h0, channelPickerActivity.f28518g0, channelPickerActivity.f28521j0, strValueOf5);
                    break;
                }
                break;
            case 5:
                int i21 = channelPickerActivity.f28489G0;
                if (i21 < 59) {
                    int i22 = i21 + 1;
                    channelPickerActivity.f28489G0 = i22;
                    channelPickerActivity.f28483B0.setText(String.valueOf(i22));
                    String strValueOf6 = String.valueOf(channelPickerActivity.f28489G0);
                    channelPickerActivity.f28522k0 = strValueOf6;
                    channelPickerActivity.b(channelPickerActivity.f28520i0, channelPickerActivity.f28519h0, channelPickerActivity.f28518g0, channelPickerActivity.f28521j0, strValueOf6);
                }
                break;
            case 6:
                ChannelPickerActivity channelPickerActivity2 = channelPickerActivity.f28496K;
                View viewInflate = LayoutInflater.from(channelPickerActivity2).inflate(R.layout.xciptv_dialog_date_picker, (ViewGroup) null);
                AlertDialog alertDialogCreate = new AlertDialog.Builder(channelPickerActivity2).create();
                Button button = (Button) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.btn_ok);
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_cancel);
                channelPickerActivity.f28491H0 = (TextView) viewInflate.findViewById(R.id.txt_date_picker);
                channelPickerActivity.f28526o0 = (Button) viewInflate.findViewById(R.id.btn_year_one);
                channelPickerActivity.f28527p0 = (Button) viewInflate.findViewById(R.id.btn_year_two);
                channelPickerActivity.f28526o0.setText(String.valueOf(channelPickerActivity.f28506U));
                channelPickerActivity.f28527p0.setText(String.valueOf(channelPickerActivity.f28507V));
                channelPickerActivity.f28528q0 = (Button) viewInflate.findViewById(R.id.btn_m_pre);
                channelPickerActivity.f28529r0 = (Button) viewInflate.findViewById(R.id.btn_m_next);
                channelPickerActivity.f28530s0 = (Button) viewInflate.findViewById(R.id.btn_d_pre);
                channelPickerActivity.f28531t0 = (Button) viewInflate.findViewById(R.id.btn_d_next);
                channelPickerActivity.f28532u0 = (Button) viewInflate.findViewById(R.id.btn_h_pre);
                channelPickerActivity.f28533v0 = (Button) viewInflate.findViewById(R.id.btn_h_next);
                channelPickerActivity.f28534w0 = (Button) viewInflate.findViewById(R.id.btn_mi_pre);
                channelPickerActivity.f28535x0 = (Button) viewInflate.findViewById(R.id.btn_mi_next);
                channelPickerActivity.f28536y0 = (TextView) viewInflate.findViewById(R.id.txt_m);
                channelPickerActivity.f28537z0 = (TextView) viewInflate.findViewById(R.id.txt_d);
                channelPickerActivity.f28482A0 = (TextView) viewInflate.findViewById(R.id.txt_h);
                channelPickerActivity.f28483B0 = (TextView) viewInflate.findViewById(R.id.txt_mi);
                channelPickerActivity.f28520i0 = String.valueOf(channelPickerActivity.f28506U);
                channelPickerActivity.f28485D0 = Integer.parseInt(String.valueOf(channelPickerActivity.f28508W));
                channelPickerActivity.f28486E0 = Integer.parseInt(String.valueOf(channelPickerActivity.f28509X));
                channelPickerActivity.f28487F0 = Integer.parseInt(String.valueOf(channelPickerActivity.f28510Y));
                channelPickerActivity.f28489G0 = Integer.parseInt(String.valueOf(channelPickerActivity.f28511Z));
                channelPickerActivity.f28519h0 = String.valueOf(channelPickerActivity.f28508W);
                channelPickerActivity.f28518g0 = String.valueOf(channelPickerActivity.f28509X);
                channelPickerActivity.f28521j0 = String.valueOf(channelPickerActivity.f28510Y);
                String strValueOf7 = String.valueOf(channelPickerActivity.f28511Z);
                channelPickerActivity.f28522k0 = strValueOf7;
                channelPickerActivity.b(channelPickerActivity.f28520i0, channelPickerActivity.f28519h0, channelPickerActivity.f28518g0, channelPickerActivity.f28521j0, strValueOf7);
                channelPickerActivity.f28536y0.setText(channelPickerActivity.f28484C0[channelPickerActivity.f28508W - 1]);
                channelPickerActivity.f28537z0.setText(String.valueOf(channelPickerActivity.f28509X));
                channelPickerActivity.f28482A0.setText(String.valueOf(channelPickerActivity.f28510Y));
                channelPickerActivity.f28483B0.setText(String.valueOf(channelPickerActivity.f28511Z));
                channelPickerActivity.f28526o0.setOnClickListener(new H(channelPickerActivity, 7));
                channelPickerActivity.f28527p0.setOnClickListener(new H(channelPickerActivity, 8));
                channelPickerActivity.f28528q0.setOnClickListener(new H(channelPickerActivity, 9));
                channelPickerActivity.f28529r0.setOnClickListener(new H(channelPickerActivity, 10));
                channelPickerActivity.f28530s0.setOnClickListener(new H(channelPickerActivity, 0));
                channelPickerActivity.f28531t0.setOnClickListener(new H(channelPickerActivity, i10));
                channelPickerActivity.f28532u0.setOnClickListener(new H(channelPickerActivity, i9));
                channelPickerActivity.f28533v0.setOnClickListener(new H(channelPickerActivity, 3));
                channelPickerActivity.f28534w0.setOnClickListener(new H(channelPickerActivity, 4));
                channelPickerActivity.f28535x0.setOnClickListener(new H(channelPickerActivity, 5));
                button.setOnClickListener(new I(channelPickerActivity, alertDialogCreate, 0));
                button2.setOnClickListener(new I(channelPickerActivity, alertDialogCreate, 1));
                alertDialogCreate.show();
                break;
            case 7:
                String strValueOf8 = String.valueOf(channelPickerActivity.f28506U);
                channelPickerActivity.f28520i0 = strValueOf8;
                channelPickerActivity.b(strValueOf8, channelPickerActivity.f28519h0, channelPickerActivity.f28518g0, channelPickerActivity.f28521j0, channelPickerActivity.f28522k0);
                break;
            case 8:
                String strValueOf9 = String.valueOf(channelPickerActivity.f28507V);
                channelPickerActivity.f28520i0 = strValueOf9;
                channelPickerActivity.b(strValueOf9, channelPickerActivity.f28519h0, channelPickerActivity.f28518g0, channelPickerActivity.f28521j0, channelPickerActivity.f28522k0);
                break;
            case 9:
                int i23 = channelPickerActivity.f28485D0;
                if (i23 > 1 && i23 < 13) {
                    channelPickerActivity.f28485D0 = i23 - 1;
                    channelPickerActivity.f28536y0.setText(channelPickerActivity.f28484C0[i23 - 2]);
                    String strValueOf10 = String.valueOf(channelPickerActivity.f28485D0);
                    channelPickerActivity.f28519h0 = strValueOf10;
                    channelPickerActivity.b(channelPickerActivity.f28520i0, strValueOf10, channelPickerActivity.f28518g0, channelPickerActivity.f28521j0, channelPickerActivity.f28522k0);
                    break;
                }
                break;
            default:
                int i24 = channelPickerActivity.f28485D0;
                if (i24 > 0 && i24 < 12) {
                    channelPickerActivity.f28485D0 = i24 + 1;
                    channelPickerActivity.f28536y0.setText(channelPickerActivity.f28484C0[i24]);
                    String strValueOf11 = String.valueOf(channelPickerActivity.f28485D0);
                    channelPickerActivity.f28519h0 = strValueOf11;
                    channelPickerActivity.b(channelPickerActivity.f28520i0, strValueOf11, channelPickerActivity.f28518g0, channelPickerActivity.f28521j0, channelPickerActivity.f28522k0);
                    break;
                }
                break;
        }
    }
}
