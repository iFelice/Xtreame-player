package b7;

import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import p086l.ViewOnClickListenerC3020c;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0555w implements AdapterView.OnItemLongClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f10514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f10515c;

    public /* synthetic */ C0555w(Object obj, ArrayList arrayList, int i8) {
        this.f10513a = i8;
        this.f10515c = obj;
        this.f10514b = arrayList;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView adapterView, View view, int i8, long j8) {
        int i9 = this.f10513a;
        Object obj = this.f10515c;
        ArrayList arrayList = this.f10514b;
        switch (i9) {
            case 0:
                if (!((String) ((HashMap) arrayList.get(i8)).get("isactive")).equals("yes")) {
                    ChannelListActivity channelListActivity = (ChannelListActivity) obj;
                    View viewInflate = LayoutInflater.from(channelListActivity.f28444G).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(channelListActivity.f28444G).create();
                    ((TextView) A0.O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title_xd)).setText(((Object) channelListActivity.f28444G.getText(R.string.xc_remove)) + "?");
                    Button button = (Button) viewInflate.findViewById(R.id.button_yes);
                    Button button2 = (Button) viewInflate.findViewById(R.id.button_no);
                    button.setText(channelListActivity.f28444G.getString(R.string.xc_ok));
                    button2.setText(channelListActivity.f28444G.getString(R.string.xc_cancel_str));
                    button.setOnClickListener(new ViewOnClickListenerC0553v(this, i8, alertDialogCreate, 0));
                    button2.setOnClickListener(new ViewOnClickListenerC3020c(4, this, alertDialogCreate));
                    alertDialogCreate.show();
                } else {
                    ChannelListActivity channelListActivity2 = (ChannelListActivity) obj;
                    Methods.l(channelListActivity2.f28444G, channelListActivity2.f28444G.getString(R.string.xc_profile_in_use));
                }
                break;
            case 1:
                if (!((String) ((HashMap) arrayList.get(i8)).get("isactive")).equals("yes")) {
                    I0 i10 = (I0) obj;
                    View viewInflate2 = LayoutInflater.from(i10.l()).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
                    AlertDialog alertDialogCreate2 = new AlertDialog.Builder(i10.l()).create();
                    ((TextView) A0.O.w(alertDialogCreate2.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate2, viewInflate2, R.id.txt_title_xd)).setText(((Object) i10.l().getText(R.string.xc_remove)) + "?");
                    Button button3 = (Button) viewInflate2.findViewById(R.id.button_yes);
                    Button button4 = (Button) viewInflate2.findViewById(R.id.button_no);
                    button3.setText(i10.l().getString(R.string.xc_ok));
                    button4.setText(i10.l().getString(R.string.xc_cancel_str));
                    button3.setOnClickListener(new ViewOnClickListenerC0553v(this, i8, alertDialogCreate2, 1));
                    button4.setOnClickListener(new ViewOnClickListenerC3020c(9, this, alertDialogCreate2));
                    alertDialogCreate2.show();
                } else {
                    I0 i11 = (I0) obj;
                    Methods.l(i11.l(), i11.l().getString(R.string.xc_profile_in_use));
                }
                break;
            case 2:
                if (!((String) ((HashMap) arrayList.get(i8)).get("isactive")).equals("yes")) {
                    M0 m7 = (M0) obj;
                    View viewInflate3 = LayoutInflater.from(m7.l()).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
                    AlertDialog alertDialogCreate3 = new AlertDialog.Builder(m7.l()).create();
                    ((TextView) A0.O.w(alertDialogCreate3.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate3, viewInflate3, R.id.txt_title_xd)).setText(((Object) m7.l().getText(R.string.xc_remove)) + "?");
                    Button button5 = (Button) viewInflate3.findViewById(R.id.button_yes);
                    Button button6 = (Button) viewInflate3.findViewById(R.id.button_no);
                    button5.setText(m7.l().getString(R.string.xc_ok));
                    button6.setText(m7.l().getString(R.string.xc_cancel_str));
                    button5.setOnClickListener(new ViewOnClickListenerC0553v(this, i8, alertDialogCreate3, 3));
                    button6.setOnClickListener(new ViewOnClickListenerC3020c(11, this, alertDialogCreate3));
                    alertDialogCreate3.show();
                } else {
                    M0 m8 = (M0) obj;
                    Methods.l(m8.l(), m8.l().getString(R.string.xc_profile_in_use));
                }
                break;
            default:
                if (!((String) ((HashMap) arrayList.get(i8)).get("isactive")).equals("yes")) {
                    S0 s7 = (S0) obj;
                    View viewInflate4 = LayoutInflater.from(s7.l()).inflate(R.layout.xciptv_dialog, (ViewGroup) null);
                    AlertDialog alertDialogCreate4 = new AlertDialog.Builder(s7.l()).create();
                    ((TextView) A0.O.w(alertDialogCreate4.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate4, viewInflate4, R.id.txt_title_xd)).setText(((Object) s7.l().getText(R.string.xc_remove)) + "?");
                    Button button7 = (Button) viewInflate4.findViewById(R.id.button_yes);
                    Button button8 = (Button) viewInflate4.findViewById(R.id.button_no);
                    button7.setText(s7.l().getString(R.string.xc_ok));
                    button8.setText(s7.l().getString(R.string.xc_cancel_str));
                    button7.setOnClickListener(new ViewOnClickListenerC0553v(this, i8, alertDialogCreate4, 4));
                    button8.setOnClickListener(new ViewOnClickListenerC3020c(13, this, alertDialogCreate4));
                    alertDialogCreate4.show();
                } else {
                    S0 s8 = (S0) obj;
                    Methods.l(s8.l(), s8.l().getString(R.string.xc_profile_in_use));
                }
                break;
        }
        return true;
    }
}
