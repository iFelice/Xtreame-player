package W4;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import b7.B0;
import b7.I0;
import b7.J0;
import b7.L1;
import b7.M0;
import b7.O0;
import b7.S0;
import b7.ViewOnClickListenerC0557x;
import b7.q1;
import java.util.List;
import k7.j;
import p000a.r;
import p096m2.l;
import p104n2.t;
import p109o.g;
import p190y4.k;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;
import pe.hf.black20.SettingsMenuActivity;
import pe.hf.black20.SplashActivity;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.speedtest.SpeedTestActivity;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;

/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f7479G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f7480H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f7481I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f7482J;

    public /* synthetic */ a(Object obj, Object obj2, Object obj3, int i8) {
        this.f7479G = i8;
        this.f7482J = obj;
        this.f7480H = obj2;
        this.f7481I = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0277  */
    /* JADX WARN: Code duplicated, block: B:57:0x028e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0292  */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Intent intent;
        ResolveInfo resolveInfoResolveActivity;
        String scheme;
        int i8 = this.f7479G;
        Object obj = this.f7481I;
        Object obj2 = this.f7482J;
        Object obj3 = this.f7480H;
        switch (i8) {
            case 0:
                e eVar = (e) obj2;
                if (eVar.f7490G != null) {
                    k.W("Calling callback for click action");
                    ((M1.a) eVar.f7490G).c();
                    throw null;
                }
                Activity activity = (Activity) obj;
                Uri uri = Uri.parse(((p030d5.a) obj3).f24661a);
                if (uri == null || (scheme = uri.getScheme()) == null || (!scheme.equalsIgnoreCase("http") && !scheme.equalsIgnoreCase("https"))) {
                    intent = new Intent("android.intent.action.VIEW", uri);
                    resolveInfoResolveActivity = activity.getPackageManager().resolveActivity(intent, 0);
                    intent.addFlags(1073741824);
                    intent.addFlags(268435456);
                    if (resolveInfoResolveActivity != null) {
                        activity.startActivity(intent);
                    } else {
                        k.V("Device cannot resolve intent for: android.intent.action.VIEW");
                    }
                } else {
                    Intent intent2 = new Intent("android.support.customtabs.action.CustomTabsService");
                    intent2.setPackage("com.android.chrome");
                    List<ResolveInfo> listQueryIntentServices = activity.getPackageManager().queryIntentServices(intent2, 0);
                    if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                        intent = new Intent("android.intent.action.VIEW", uri);
                        resolveInfoResolveActivity = activity.getPackageManager().resolveActivity(intent, 0);
                        intent.addFlags(1073741824);
                        intent.addFlags(268435456);
                        if (resolveInfoResolveActivity != null) {
                            activity.startActivity(intent);
                        } else {
                            k.V("Device cannot resolve intent for: android.intent.action.VIEW");
                        }
                    } else {
                        l lVarA = new g().a();
                        Intent intent3 = (Intent) lVarA.f27231H;
                        intent3.addFlags(1073741824);
                        intent3.addFlags(268435456);
                        lVarA.l(activity, uri);
                    }
                }
                eVar.a(activity);
                eVar.getClass();
                eVar.f7490G = null;
                return;
            case 1:
                EditText editText = (EditText) obj3;
                if (r.s(editText)) {
                    editText.setError("Name is empty");
                    return;
                }
                ViewOnClickListenerC0557x viewOnClickListenerC0557x = (ViewOnClickListenerC0557x) obj2;
                viewOnClickListenerC0557x.f10523H.f28452O.g0(editText.getText().toString());
                ChannelListActivity.a(viewOnClickListenerC0557x.f10523H);
                ((AlertDialog) obj).dismiss();
                return;
            case 2:
                EditText editText2 = (EditText) obj3;
                if (r.s(editText2)) {
                    editText2.setError("Name is empty");
                    return;
                }
                B0 b8 = (B0) obj2;
                b8.f9968H.f10037E0.g0(editText2.getText().toString());
                I0.S(b8.f9968H);
                ((AlertDialog) obj).dismiss();
                return;
            case 3:
                EditText editText3 = (EditText) obj3;
                if (r.s(editText3)) {
                    editText3.setError("Name is empty");
                    return;
                }
                J0 j8 = (J0) obj2;
                j8.f10091H.f10121I0.g0(editText3.getText().toString());
                M0.S(j8.f10091H);
                ((AlertDialog) obj).dismiss();
                return;
            case 4:
                EditText editText4 = (EditText) obj3;
                if (r.s(editText4)) {
                    editText4.setError("Name is empty");
                    return;
                }
                O0 o4 = (O0) obj2;
                o4.f10160H.f10183E0.g0(editText4.getText().toString());
                S0.S(o4.f10160H);
                ((AlertDialog) obj).dismiss();
                return;
            case 5:
                if (((String) obj3) != "clearcache") {
                    ((AlertDialog) obj).dismiss();
                    return;
                }
                Methods.z(OTRApp.f29417G);
                int i9 = SettingsMenuActivity.f29155W;
                ((SettingsMenuActivity) obj2).getClass();
                Intent intent4 = new Intent(OTRApp.f29417G, (Class<?>) SplashActivity.class);
                intent4.addFlags(268468224);
                OTRApp.f29417G.startActivity(intent4);
                ((AlertDialog) obj).dismiss();
                return;
            case 6:
                if (((String) obj3).equals("no")) {
                    UsersHistoryActivity usersHistoryActivity = (UsersHistoryActivity) obj2;
                    UsersHistoryActivity usersHistoryActivity2 = usersHistoryActivity.f29228G;
                    View viewInflate = LayoutInflater.from(usersHistoryActivity2).inflate(R.layout.xciptv_dialog_update_login, (ViewGroup) null);
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(usersHistoryActivity2).create();
                    EditText editText5 = (EditText) viewInflate.findViewById(R.id.ed_username);
                    EditText editText6 = (EditText) viewInflate.findViewById(R.id.ed_password);
                    Button button = (Button) viewInflate.findViewById(R.id.btn_update);
                    ((Button) viewInflate.findViewById(R.id.btn_cancel)).setOnClickListener(new L1(usersHistoryActivity, alertDialogCreate, 3));
                    button.setOnClickListener(new q1(usersHistoryActivity, editText5, editText6, (String) obj, alertDialogCreate, 1));
                    alertDialogCreate.show();
                    usersHistoryActivity.f29243V.dismiss();
                    return;
                }
                UsersHistoryActivity usersHistoryActivity3 = (UsersHistoryActivity) obj2;
                String str = (String) obj;
                usersHistoryActivity3.f29235N = usersHistoryActivity3.f29231J.f0(str);
                usersHistoryActivity3.f29231J.c0(str);
                c7.d dVar = usersHistoryActivity3.f29232K;
                String str2 = usersHistoryActivity3.f29235N.f25478a;
                SQLiteDatabase writableDatabase = dVar.getWritableDatabase();
                writableDatabase.delete("fav", "stream_type =?", new String[]{str2});
                writableDatabase.close();
                c7.b bVar = usersHistoryActivity3.f29233L;
                String str3 = usersHistoryActivity3.f29235N.f25478a;
                Cursor cursorRawQuery = bVar.getWritableDatabase().rawQuery("DELETE FROM parental_control_tv WHERE parent_id=?", new String[]{str3});
                cursorRawQuery.getCount();
                cursorRawQuery.close();
                Cursor cursorRawQuery2 = bVar.getWritableDatabase().rawQuery("DELETE FROM parental_control_vod WHERE parent_id=?", new String[]{str3});
                cursorRawQuery2.getCount();
                cursorRawQuery2.close();
                Cursor cursorRawQuery3 = bVar.getWritableDatabase().rawQuery("DELETE FROM parental_control_series WHERE parent_id=?", new String[]{str3});
                cursorRawQuery3.getCount();
                cursorRawQuery3.close();
                SQLiteDatabase writableDatabase2 = usersHistoryActivity3.f29234M.getWritableDatabase();
                writableDatabase2.delete("multiscreen", "profile = ?", new String[]{str});
                writableDatabase2.close();
                usersHistoryActivity3.d();
                usersHistoryActivity3.f29243V.dismiss();
                return;
            default:
                ((Button) obj3).setEnabled(false);
                SpeedTestActivity speedTestActivity = (SpeedTestActivity) obj2;
                if (speedTestActivity.f29345H == null) {
                    j jVar = new j();
                    speedTestActivity.f29345H = jVar;
                    jVar.start();
                }
                new Thread(new t(this)).start();
                return;
        }
    }
}
