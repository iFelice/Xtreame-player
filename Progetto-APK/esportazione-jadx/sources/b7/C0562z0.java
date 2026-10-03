package b7;

import Y.C0389a;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.z0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0562z0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ORPlayerMainActivity f10533b;

    public /* synthetic */ C0562z0(ORPlayerMainActivity oRPlayerMainActivity, int i8) {
        this.f10532a = i8;
        this.f10533b = oRPlayerMainActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i8 = this.f10532a;
        ORPlayerMainActivity oRPlayerMainActivity = this.f10533b;
        switch (i8) {
            case 0:
                if (intent.hasExtra("what")) {
                    String stringExtra = intent.getStringExtra("what");
                    if (stringExtra.equals("msg")) {
                        intent.getStringExtra("success").equals("1");
                        break;
                    } else if (stringExtra.equals("pr") && !oRPlayerMainActivity.isFinishing()) {
                        String stringExtra2 = intent.getStringExtra("title");
                        String stringExtra3 = intent.getStringExtra("desc");
                        String stringExtra4 = intent.getStringExtra("time");
                        ORPlayerMainActivity oRPlayerMainActivity2 = oRPlayerMainActivity.f28782e0;
                        View viewInflate = LayoutInflater.from(oRPlayerMainActivity2).inflate(R.layout.xciptv_dialog_program_reminder_popup, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(oRPlayerMainActivity2).create();
                        TextView textView = (TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title);
                        TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_desc);
                        TextView textView3 = (TextView) viewInflate.findViewById(R.id.txt_time);
                        textView.setText(stringExtra2);
                        textView2.setText(stringExtra3);
                        textView3.setText(stringExtra4);
                        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
                        button.setOnClickListener(new ViewOnClickListenerC0560y0(oRPlayerMainActivity, alertDialogCreate, 2));
                        ((Button) viewInflate.findViewById(R.id.button_no)).setOnClickListener(new ViewOnClickListenerC0560y0(oRPlayerMainActivity, alertDialogCreate, 3));
                        button.setFocusable(true);
                        button.requestFocus();
                        alertDialogCreate.show();
                        break;
                    }
                }
                break;
            default:
                Log.e("FirstReceiver", "FirstReceiver");
                if (intent.getAction().equals(ORPlayerMainActivity.FINISH_ALERT)) {
                    oRPlayerMainActivity.finish();
                }
                if (intent.getAction().equals(ORPlayerMainActivity.LOAD_TV_FRAGMENT)) {
                    String str = ORPlayerMainActivity.THEME;
                    oRPlayerMainActivity.getClass();
                    z4.q0.q().g("ORT_WHICH_CAT", "TV");
                    Y.K kR = oRPlayerMainActivity.f7985X.R();
                    kR.getClass();
                    C0389a c0389a = new C0389a(kR);
                    oRPlayerMainActivity.f28792o0 = c0389a;
                    c0389a.g(R.id.layout_fragment_holder, new M0());
                    oRPlayerMainActivity.f28792o0.d(false);
                }
                break;
        }
    }
}
