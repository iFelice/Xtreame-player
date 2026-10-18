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
public final class B0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9967G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ I0 f9968H;

    public /* synthetic */ B0(I0 i8, int i9) {
        this.f9967G = i9;
        this.f9968H = i8;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f9967G;
        I0 i9 = this.f9968H;
        switch (i8) {
            case 0:
                i9.f10073o1 = false;
                i9.f10074p1 = "all";
                i9.U("all");
                break;
            case 1:
                View viewInflate = LayoutInflater.from(i9.l()).inflate(R.layout.xciptv_dialog_add_fav_profile, (ViewGroup) null);
                AlertDialog alertDialogCreate = new AlertDialog.Builder(i9.l()).create();
                EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.profile_name);
                Button button = (Button) viewInflate.findViewById(R.id.btn_add_fav_profile);
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_cancel_add_fav);
                button.setOnClickListener(new W4.a(this, editText, alertDialogCreate, 2));
                button2.setOnClickListener(new ViewOnClickListenerC3020c(8, this, alertDialogCreate));
                alertDialogCreate.show();
                break;
            case 2:
                i9.f10081w1.setVisibility(8);
                break;
            case 3:
                i9.f10073o1 = false;
                if (!i9.f10071m1) {
                    i9.W(view, false);
                } else {
                    i9.f10074p1 = "search";
                    i9.U(i9.f10069k1.getText().toString());
                    i9.W(view, true);
                }
                break;
            case 4:
                i9.W(view, true);
                break;
            case 5:
                i9.f10073o1 = false;
                i9.f10074p1 = "fav";
                i9.U("all");
                break;
            default:
                i9.f10074p1 = "continue";
                i9.U("all");
                break;
        }
    }
}
