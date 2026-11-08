package b7;

import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class O0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10159G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ S0 f10160H;

    public /* synthetic */ O0(S0 s7, int i8) {
        this.f10159G = i8;
        this.f10160H = s7;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10159G;
        S0 s7 = this.f10160H;
        switch (i8) {
            case 0:
                View viewInflate = LayoutInflater.from(s7.l()).inflate(R.layout.xciptv_dialog_add_fav_profile, (ViewGroup) null);
                AlertDialog alertDialogCreate = new AlertDialog.Builder(s7.l()).create();
                EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.profile_name);
                Button button = (Button) viewInflate.findViewById(R.id.btn_add_fav_profile);
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_cancel_add_fav);
                button.setOnClickListener(new W4.a(this, editText, alertDialogCreate, 4));
                button2.setOnClickListener(new ViewOnClickListenerC3020c(12, this, alertDialogCreate));
                alertDialogCreate.show();
                break;
            case 1:
                s7.f10226v1.setVisibility(8);
                break;
            case 2:
                s7.f10214j1 = false;
                if (!s7.f10212h1) {
                    s7.Z(view, false);
                } else {
                    s7.f10209e1 = "search";
                    s7.W(s7.f10195Q0.getText().toString());
                    s7.Z(view, true);
                }
                break;
            case 3:
                s7.Z(view, true);
                break;
            case 4:
                s7.f10214j1 = false;
                s7.Z(view, true);
                s7.f10209e1 = "fav";
                s7.W("all");
                break;
            case 5:
                s7.f10214j1 = false;
                s7.Z(view, true);
                s7.f10209e1 = "cont";
                s7.W("all");
                break;
            default:
                s7.f10214j1 = false;
                s7.Z(view, true);
                s7.f10209e1 = "all";
                s7.W("all");
                break;
        }
    }
}
