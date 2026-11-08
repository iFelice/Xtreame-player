package com.google.android.gms.internal.ads;

import A0.C0022w;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import okhttp3.HttpUrl;
import p090l3.C3099q;
import pe.hf.black20.R;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1431hq extends AbstractBinderC2328z5 implements InterfaceC1210dc {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ int f19146N = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final HashMap f19147G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f19148H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0738Fn f19149I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p120p3.k f19150J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C1172cq f19151K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f19152L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f19153M;

    public BinderC1431hq(Context context, C1172cq c1172cq, p120p3.k kVar, C0738Fn c0738Fn) {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        this.f19147G = new HashMap();
        this.f19148H = context;
        this.f19149I = c0738Fn;
        this.f19150J = kVar;
        this.f19151K = c1172cq;
    }

    public static final PendingIntent B3(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str3);
        if (Build.VERSION.SDK_INT >= 29 && str.equals("offline_notification_clicked")) {
            intent.setClassName(context, "com.google.android.gms.ads.NotificationHandlerActivity");
            return PendingIntent.getActivity(context, 0, Wy.a(201326592, intent), 201326592);
        }
        intent.setClassName(context, "com.google.android.gms.ads.AdService");
        int i8 = Wy.f17352a | 1073741824;
        return PendingIntent.getService(context, 0, Wy.a(i8, intent), i8);
    }

    public static String C3(int i8, String str) {
        Resources resourcesB = p083k3.l.f25980A.f25987g.b();
        return resourcesB == null ? str : resourcesB.getString(i8);
    }

    public static void z3(Context context, C0738Fn c0738Fn, C1172cq c1172cq, String str, String str2, Map map) {
        String strA;
        p083k3.l lVar = p083k3.l.f25980A;
        String str3 = true != lVar.f25987g.a(context) ? "offline" : "online";
        if (c0738Fn != null) {
            C0871Om c0871OmA = c0738Fn.a();
            c0871OmA.n("gqi", str);
            c0871OmA.n("action", str2);
            c0871OmA.n("device_connectivity", str3);
            lVar.f25990j.getClass();
            c0871OmA.n("event_timestamp", String.valueOf(System.currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                c0871OmA.n((String) entry.getKey(), (String) entry.getValue());
            }
            strA = ((C0738Fn) c0871OmA.f15196H).f13412a.f14208f.a((Map) c0871OmA.f15197I);
        } else {
            strA = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        String str4 = strA;
        p083k3.l.f25980A.f25990j.getClass();
        c1172cq.E(new C0022w(System.currentTimeMillis(), 2, str, str4));
    }

    public final void A3(String str, C0781Il c0781Il) {
        String strB;
        boolean zIsEmpty = TextUtils.isEmpty(c0781Il.W());
        String string = HttpUrl.FRAGMENT_ENCODE_SET;
        if (zIsEmpty) {
            strB = c0781Il.b() != null ? c0781Il.b() : HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            strB = c0781Il.W();
        }
        T8 t8M = c0781Il.M();
        if (t8M != null) {
            try {
                string = t8M.zze().toString();
            } catch (RemoteException unused) {
            }
        }
        T8 t8N = c0781Il.N();
        Drawable drawable = null;
        if (t8N != null) {
            try {
                R3.a aVarZzf = t8N.zzf();
                if (aVarZzf != null) {
                    drawable = (Drawable) R3.b.v0(aVarZzf);
                }
            } catch (RemoteException unused2) {
            }
        }
        this.f19147G.put(str, new C1069aq(strB, string, drawable));
    }

    public final void D3(String str, String str2, Map map) {
        z3(this.f19148H, this.f19149I, this.f19151K, str, str2, map);
    }

    public final void E3() {
        boolean zZzg;
        Context context = this.f19148H;
        try {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            p113o3.x xVarJ = p113o3.O.J(context);
            R3.b bVar = new R3.b(context);
            String str = this.f19153M;
            String str2 = this.f19152L;
            C1069aq c1069aq = (C1069aq) this.f19147G.get(str2);
            zZzg = xVarJ.zzg(bVar, new p097m3.a(str, str2, c1069aq == null ? HttpUrl.FRAGMENT_ENCODE_SET : c1069aq.f17975b));
            if (!zZzg) {
                try {
                    zZzg = xVarJ.zzf(new R3.b(context), this.f19153M, this.f19152L);
                } catch (RemoteException e8) {
                    e = e8;
                    p120p3.h.e("Failed to schedule offline notification poster.", e);
                }
            }
        } catch (RemoteException e9) {
            e = e9;
            zZzg = false;
        }
        if (zZzg) {
            return;
        }
        this.f19151K.k(this.f19152L);
        D3(this.f19152L, "offline_notification_worker_not_scheduled", UA.f16803M);
    }

    public final void F3(Activity activity, p105n3.k kVar) {
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        if (new D.u(activity).a()) {
            E3();
            G3(activity, kVar);
            return;
        }
        int i8 = Build.VERSION.SDK_INT;
        UA ua = UA.f16803M;
        if (i8 >= 33) {
            activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 12345);
            D3(this.f19152L, "asnpdi", ua);
            return;
        }
        AlertDialog.Builder builderI = p113o3.O.i(activity);
        int i9 = 0;
        builderI.setTitle(C3(R.string.notifications_permission_title, "Allow app to send you notifications?")).setPositiveButton(C3(R.string.notifications_permission_confirm, "Allow"), new DialogInterfaceOnClickListenerC1223dq(this, activity, kVar, i9)).setNegativeButton(C3(R.string.notifications_permission_decline, "Don't allow"), new DialogInterfaceOnClickListenerC1275eq(i9, this, kVar)).setOnCancelListener(new DialogInterfaceOnCancelListenerC1327fq(this, kVar, i9));
        builderI.create().show();
        D3(this.f19152L, "rtsdi", ua);
    }

    public final void G3(Activity activity, p105n3.k kVar) {
        AlertDialog alertDialogCreate;
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        AlertDialog.Builder onCancelListener = p113o3.O.i(activity).setOnCancelListener(new DialogInterfaceOnCancelListenerC0655Af(kVar, 2));
        Resources resourcesB = lVar.f25987g.b();
        XmlResourceParser layout = resourcesB == null ? null : resourcesB.getLayout(R.layout.offline_ads_dialog);
        if (layout == null) {
            onCancelListener.setMessage(C3(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            alertDialogCreate = onCancelListener.create();
        } else {
            View viewInflate = activity.getLayoutInflater().inflate(layout, (ViewGroup) null);
            onCancelListener.setView(viewInflate);
            HashMap map = this.f19147G;
            C1069aq c1069aq = (C1069aq) map.get(this.f19152L);
            String str = c1069aq == null ? HttpUrl.FRAGMENT_ENCODE_SET : c1069aq.f17974a;
            if (!str.isEmpty()) {
                TextView textView = (TextView) viewInflate.findViewById(R.id.offline_dialog_advertiser_name);
                textView.setVisibility(0);
                textView.setText(str);
            }
            C1069aq c1069aq2 = (C1069aq) map.get(this.f19152L);
            Drawable drawable = c1069aq2 != null ? c1069aq2.f17976c : null;
            if (drawable != null) {
                ((ImageView) viewInflate.findViewById(R.id.offline_dialog_image)).setImageDrawable(drawable);
            }
            alertDialogCreate = onCancelListener.create();
            alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        alertDialogCreate.show();
        Timer timer = new Timer();
        timer.schedule(new C1379gq(alertDialogCreate, timer, kVar), 3000L);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void Q2(String[] strArr, int[] iArr, R3.a aVar) {
        for (int i8 = 0; i8 < strArr.length; i8++) {
            if (strArr[i8].equals("android.permission.POST_NOTIFICATIONS")) {
                C1121bq c1121bq = (C1121bq) R3.b.v0(aVar);
                Activity activity = c1121bq.f18099a;
                HashMap map = new HashMap();
                int i9 = iArr[i8];
                p105n3.k kVar = c1121bq.f18100b;
                if (i9 == 0) {
                    map.put("dialog_action", "confirm");
                    E3();
                    G3(activity, kVar);
                } else {
                    map.put("dialog_action", "dismiss");
                    if (kVar != null) {
                        kVar.zzb();
                    }
                }
                D3(this.f19152L, "asnpdc", map);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void V(Intent intent) {
        C1172cq c1172cq = this.f19151K;
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            C1625le c1625le = p083k3.l.f25980A.f25987g;
            Context context = this.f19148H;
            boolean zA = c1625le.a(context);
            HashMap map = new HashMap();
            char c8 = 2;
            if (stringExtra.equals("offline_notification_clicked")) {
                map.put("offline_notification_action", "offline_notification_clicked");
                c8 = true == zA ? (char) 1 : (char) 2;
                map.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                map.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.VIEW");
                        launchIntentForPackage.setData(Uri.parse(stringExtra3));
                    }
                    launchIntentForPackage.addFlags(268435456);
                    context.startActivity(launchIntentForPackage);
                    map.put("olaa", "olas");
                } catch (ActivityNotFoundException unused) {
                    map.put("olaa", "olaf");
                }
            } else {
                map.put("offline_notification_action", "offline_notification_dismissed");
            }
            D3(stringExtra2, "offline_notification_action", map);
            try {
                SQLiteDatabase writableDatabase = c1172cq.getWritableDatabase();
                if (c8 == 1) {
                    ((C1936re) c1172cq.f18247H).execute(new K.a(writableDatabase, stringExtra2, this.f19150J, 21, 0));
                } else {
                    writableDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{stringExtra2, Integer.toString(0)});
                }
            } catch (SQLiteException e8) {
                p120p3.h.d("Failed to get writable offline buffering database: ".concat(e8.toString()));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00b5  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void V1(R3.a aVar, p097m3.a aVar2) {
        Bitmap bitmapDecodeStream;
        String str;
        Context context = (Context) R3.b.v0(aVar);
        String str2 = aVar2.f27281G;
        C1069aq c1069aq = (C1069aq) this.f19147G.get(this.f19152L);
        String str3 = c1069aq == null ? HttpUrl.FRAGMENT_ENCODE_SET : c1069aq.f17974a;
        p083k3.l.f25980A.f25985e.T(context);
        String str4 = aVar2.f27282H;
        PendingIntent pendingIntentB3 = B3(context, "offline_notification_clicked", str4, str2);
        PendingIntent pendingIntentB4 = B3(context, "offline_notification_dismissed", str4, str2);
        D.o oVar = new D.o(context, "offline_notification_channel");
        Notification notification = oVar.f1726q;
        if (str3.isEmpty()) {
            oVar.f1714e = D.o.b(C3(R.string.offline_notification_title, "You are back online! Let's pick up where we left off"));
        } else {
            oVar.f1714e = D.o.b(String.format(C3(R.string.offline_notification_title_with_advertiser, "You are back online! Continue learning about %s"), str3));
        }
        oVar.c(16);
        notification.deleteIntent = pendingIntentB4;
        oVar.f1716g = pendingIntentB3;
        notification.icon = context.getApplicationInfo().icon;
        J7 j8 = Q7.N7;
        C3099q c3099q = C3099q.f26624d;
        oVar.f1718i = ((Integer) c3099q.f26627c.a(j8)).intValue();
        if (((Boolean) c3099q.f26627c.a(Q7.P7)).booleanValue()) {
            String str5 = aVar2.f27283I;
            if (str5.isEmpty()) {
                bitmapDecodeStream = null;
            } else {
                try {
                    bitmapDecodeStream = BitmapFactory.decodeStream(new URL(str5).openConnection().getInputStream());
                } catch (IOException unused) {
                    bitmapDecodeStream = null;
                }
            }
        } else {
            bitmapDecodeStream = null;
        }
        if (bitmapDecodeStream != null) {
            try {
                oVar.d(bitmapDecodeStream);
                D.m mVar = new D.m();
                IconCompat iconCompat = new IconCompat(1);
                iconCompat.f9004b = bitmapDecodeStream;
                mVar.f1706b = iconCompat;
                mVar.f1707c = null;
                mVar.f1708d = true;
                oVar.e(mVar);
            } catch (Resources.NotFoundException unused2) {
            }
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        HashMap map = new HashMap();
        try {
            notificationManager.notify(str4, 54321, oVar.a());
            str = "offline_notification_impression";
        } catch (IllegalArgumentException e8) {
            map.put("notification_not_shown_reason", e8.getMessage());
            str = "offline_notification_failed";
        }
        D3(str4, str, map);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void w3(R3.a aVar) {
        C1121bq c1121bq = (C1121bq) R3.b.v0(aVar);
        Activity activity = c1121bq.f18099a;
        this.f19152L = c1121bq.f18101c;
        this.f19153M = c1121bq.f18102d;
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.M7)).booleanValue();
        p105n3.k kVar = c1121bq.f18100b;
        if (zBooleanValue) {
            F3(activity, kVar);
            return;
        }
        D3(this.f19152L, "dialog_impression", UA.f16803M);
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        AlertDialog.Builder builderI = p113o3.O.i(activity);
        int i8 = 1;
        builderI.setTitle(C3(R.string.offline_opt_in_title, "Open ad when you're back online.")).setMessage(C3(R.string.offline_opt_in_message, "We'll send you a notification with a link to the advertiser site.")).setPositiveButton(C3(R.string.offline_opt_in_confirm, "OK"), new DialogInterfaceOnClickListenerC1223dq(this, activity, kVar, i8)).setNegativeButton(C3(R.string.offline_opt_in_decline, "No thanks"), new DialogInterfaceOnClickListenerC1275eq(i8, this, kVar)).setOnCancelListener(new DialogInterfaceOnCancelListenerC1327fq(this, kVar, i8));
        builderI.create().show();
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        switch (i8) {
            case 1:
                Intent intent = (Intent) A5.a(parcel, Intent.CREATOR);
                A5.b(parcel);
                V(intent);
                break;
            case 2:
                R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
                String string = parcel.readString();
                String string2 = parcel.readString();
                A5.b(parcel);
                V1(aVarJ0, new p097m3.a(string, string2, HttpUrl.FRAGMENT_ENCODE_SET));
                break;
            case 3:
                zzh();
                break;
            case 4:
                R3.a aVarJ1 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                w3(aVarJ1);
                break;
            case 5:
                String[] strArrCreateStringArray = parcel.createStringArray();
                int[] iArrCreateIntArray = parcel.createIntArray();
                R3.a aVarJ2 = R3.b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                Q2(strArrCreateStringArray, iArrCreateIntArray, aVarJ2);
                break;
            case 6:
                R3.a aVarJ3 = R3.b.j0(parcel.readStrongBinder());
                p097m3.a aVar = (p097m3.a) A5.a(parcel, p097m3.a.CREATOR);
                A5.b(parcel);
                V1(aVarJ3, aVar);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void zzh() {
        this.f19151K.N(new C0864Of(this.f19150J, 22));
    }
}
