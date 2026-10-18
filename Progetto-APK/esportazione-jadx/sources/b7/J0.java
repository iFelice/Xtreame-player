package b7;

import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import java.util.HashMap;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.R;
import pe.hf.black20.epg.EPGActivityXMLTV;

/* JADX INFO: loaded from: classes2.dex */
public final class J0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10090G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ M0 f10091H;

    public /* synthetic */ J0(M0 m7, int i8) {
        this.f10090G = i8;
        this.f10091H = m7;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10090G;
        M0 m7 = this.f10091H;
        switch (i8) {
            case 0:
                m7.U("none", m7.f10129Q0.getText().toString());
                break;
            case 1:
                Intent intent = new Intent(m7.j(), (Class<?>) EPGActivityXMLTV.class);
                m7.j().startActivity(intent);
                intent.addFlags(67108864);
                m7.R(intent);
                break;
            case 2:
                M0.f10110e1 = view.getTag().toString();
                z4.q0.q().g("ORT_CAT_NAME", ((Button) view).getText().toString());
                for (int i9 = 0; i9 < m7.f10116D0.size(); i9++) {
                    if (((String) ((HashMap) m7.f10116D0.get(i9)).get("category_id")).equals(M0.f10110e1)) {
                        ((Button) m7.f10118F0.findViewWithTag(((HashMap) m7.f10116D0.get(i9)).get("category_id"))).setTypeface(F.n.b(m7.l(), R.font.quicksand_bold));
                    } else {
                        ((Button) m7.f10118F0.findViewWithTag(((HashMap) m7.f10116D0.get(i9)).get("category_id"))).setTypeface(F.n.b(m7.l(), R.font.quicksand_light));
                    }
                }
                m7.U("none", m7.f10129Q0.getText().toString());
                break;
            case 3:
                View viewInflate = LayoutInflater.from(m7.l()).inflate(R.layout.xciptv_dialog_add_fav_profile, (ViewGroup) null);
                AlertDialog alertDialogCreate = new AlertDialog.Builder(m7.l()).create();
                EditText editText = (EditText) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.profile_name);
                Button button = (Button) viewInflate.findViewById(R.id.btn_add_fav_profile);
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_cancel_add_fav);
                button.setOnClickListener(new W4.a(this, editText, alertDialogCreate, 3));
                button2.setOnClickListener(new ViewOnClickListenerC3020c(10, this, alertDialogCreate));
                alertDialogCreate.show();
                break;
            case 4:
                m7.f10139a1.setVisibility(8);
                m7.f10115C0.requestFocus();
                break;
            case 5:
                Intent intent2 = new Intent(m7.j(), (Class<?>) MultiScreenActivityEXO.class);
                m7.j().startActivity(intent2);
                intent2.addFlags(67108864);
                m7.R(intent2);
                break;
            case 6:
                m7.U("search", m7.f10129Q0.getText().toString());
                if (m7.f10130R0) {
                    m7.V(view, true);
                } else {
                    m7.V(view, false);
                }
                break;
            case 7:
                m7.V(view, true);
                break;
            default:
                m7.U("fav", m7.f10129Q0.getText().toString());
                break;
        }
    }
}
