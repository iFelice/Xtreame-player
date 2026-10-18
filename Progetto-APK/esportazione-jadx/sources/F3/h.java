package F3;

import D.o;
import D.y;
import D3.C0157a;
import D3.C0158b;
import E1.b0;
import E1.e0;
import E3.t;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.internal.cast.AbstractC2513x;
import com.google.android.gms.internal.cast.D0;
import com.google.android.gms.internal.cast.EnumC2435d0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import okhttp3.HttpUrl;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final H3.b f3197u = new H3.b("MediaNotificationProxy", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NotificationManager f3199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final E3.g f3200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ComponentName f3201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ComponentName f3202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f3203f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f3204g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f3205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e0 f3206i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Resources f3207j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public g f3208k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public p096m2.e f3209l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public D.j f3210m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public D.j f3211n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public D.j f3212o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public D.j f3213p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public D.j f3214q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public D.j f3215r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public D.j f3216s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public D.j f3217t;

    public h(Context context) {
        this.f3198a = context;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        this.f3199b = notificationManager;
        H3.b bVar = C0157a.f2336k;
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C0157a c0157a = C0157a.f2338m;
        com.bumptech.glide.c.h(c0157a);
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C0158b c0158b = c0157a.f2342d;
        com.bumptech.glide.c.h(c0158b);
        E3.b bVar2 = c0158b.f2357L;
        com.bumptech.glide.c.h(bVar2);
        E3.g gVar = bVar2.f2834J;
        com.bumptech.glide.c.h(gVar);
        this.f3200c = gVar;
        bVar2.i();
        Resources resources = context.getResources();
        this.f3207j = resources;
        this.f3201d = new ComponentName(context.getApplicationContext(), bVar2.f2831G);
        String str = gVar.f2870J;
        if (TextUtils.isEmpty(str)) {
            this.f3202e = null;
        } else {
            this.f3202e = new ComponentName(context.getApplicationContext(), str);
        }
        this.f3205h = gVar.f2869I;
        int dimensionPixelSize = resources.getDimensionPixelSize(gVar.f2884X);
        this.f3206i = new e0(context.getApplicationContext(), new E3.c(1, dimensionPixelSize, dimensionPixelSize));
        if (U2.m.a() && notificationManager != null) {
            NotificationChannel notificationChannelB = b0.b(context.getResources().getString(R.string.media_notification_channel_name));
            notificationChannelB.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannelB);
        }
        D0.a(EnumC2435d0.CAF_MEDIA_NOTIFICATION_PROXY);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x0052  */
    public final D.j a(String str) {
        byte b8;
        int i8;
        int i9;
        PendingIntent broadcast;
        PendingIntent broadcast2;
        long j8;
        int i10;
        long j9;
        int i11;
        switch (str) {
            case "com.google.android.gms.cast.framework.action.REWIND":
                b8 = 4;
                break;
            case "com.google.android.gms.cast.framework.action.SKIP_NEXT":
                b8 = 1;
                break;
            case "com.google.android.gms.cast.framework.action.SKIP_PREV":
                b8 = 2;
                break;
            case "com.google.android.gms.cast.framework.action.STOP_CASTING":
                b8 = 5;
                break;
            case "com.google.android.gms.cast.framework.action.DISCONNECT":
                b8 = 6;
                break;
            case "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK":
                b8 = 0;
                break;
            case "com.google.android.gms.cast.framework.action.FORWARD":
                b8 = 3;
                break;
            default:
                b8 = -1;
                break;
        }
        long j10 = this.f3205h;
        Resources resources = this.f3207j;
        Context context = this.f3198a;
        ComponentName componentName = this.f3201d;
        E3.g gVar = this.f3200c;
        switch (b8) {
            case 0:
                g gVar2 = this.f3208k;
                int i12 = gVar2.f3192c;
                if (!gVar2.f3191b) {
                    if (this.f3210m == null) {
                        Intent intent = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                        intent.setComponent(componentName);
                        PendingIntent broadcast3 = PendingIntent.getBroadcast(context, 0, intent, AbstractC2513x.f22816a);
                        int i13 = gVar.f2874N;
                        String string = resources.getString(gVar.f2888b0);
                        IconCompat iconCompatC = i13 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i13);
                        Bundle bundle = new Bundle();
                        CharSequence charSequenceB = o.b(string);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        this.f3210m = new D.j(iconCompatC, charSequenceB, broadcast3, bundle, arrayList2.isEmpty() ? null : (y[]) arrayList2.toArray(new y[arrayList2.size()]), arrayList.isEmpty() ? null : (y[]) arrayList.toArray(new y[arrayList.size()]), true, 0, true, false, false);
                    }
                    return this.f3210m;
                }
                if (this.f3211n == null) {
                    if (i12 == 2) {
                        i8 = gVar.f2872L;
                        i9 = gVar.f2886Z;
                    } else {
                        i8 = gVar.f2873M;
                        i9 = gVar.f2887a0;
                    }
                    Intent intent2 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                    intent2.setComponent(componentName);
                    PendingIntent broadcast4 = PendingIntent.getBroadcast(context, 0, intent2, AbstractC2513x.f22816a);
                    String string2 = resources.getString(i9);
                    IconCompat iconCompatC2 = i8 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i8);
                    Bundle bundle2 = new Bundle();
                    CharSequence charSequenceB2 = o.b(string2);
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    this.f3211n = new D.j(iconCompatC2, charSequenceB2, broadcast4, bundle2, arrayList4.isEmpty() ? null : (y[]) arrayList4.toArray(new y[arrayList4.size()]), arrayList3.isEmpty() ? null : (y[]) arrayList3.toArray(new y[arrayList3.size()]), true, 0, true, false, false);
                }
                return this.f3211n;
            case 1:
                boolean z7 = this.f3208k.f3195f;
                if (this.f3212o == null) {
                    if (z7) {
                        Intent intent3 = new Intent(MediaIntentReceiver.ACTION_SKIP_NEXT);
                        intent3.setComponent(componentName);
                        broadcast = PendingIntent.getBroadcast(context, 0, intent3, AbstractC2513x.f22816a);
                    } else {
                        broadcast = null;
                    }
                    int i14 = gVar.f2875O;
                    String string3 = resources.getString(gVar.f2889c0);
                    IconCompat iconCompatC3 = i14 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i14);
                    Bundle bundle3 = new Bundle();
                    CharSequence charSequenceB3 = o.b(string3);
                    ArrayList arrayList5 = new ArrayList();
                    ArrayList arrayList6 = new ArrayList();
                    this.f3212o = new D.j(iconCompatC3, charSequenceB3, broadcast, bundle3, arrayList6.isEmpty() ? null : (y[]) arrayList6.toArray(new y[arrayList6.size()]), arrayList5.isEmpty() ? null : (y[]) arrayList5.toArray(new y[arrayList5.size()]), true, 0, true, false, false);
                }
                return this.f3212o;
            case 2:
                boolean z8 = this.f3208k.f3196g;
                if (this.f3213p == null) {
                    if (z8) {
                        Intent intent4 = new Intent(MediaIntentReceiver.ACTION_SKIP_PREV);
                        intent4.setComponent(componentName);
                        broadcast2 = PendingIntent.getBroadcast(context, 0, intent4, AbstractC2513x.f22816a);
                    } else {
                        broadcast2 = null;
                    }
                    int i15 = gVar.f2876P;
                    String string4 = resources.getString(gVar.f2890d0);
                    IconCompat iconCompatC4 = i15 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i15);
                    Bundle bundle4 = new Bundle();
                    CharSequence charSequenceB4 = o.b(string4);
                    ArrayList arrayList7 = new ArrayList();
                    ArrayList arrayList8 = new ArrayList();
                    this.f3213p = new D.j(iconCompatC4, charSequenceB4, broadcast2, bundle4, arrayList8.isEmpty() ? null : (y[]) arrayList8.toArray(new y[arrayList8.size()]), arrayList7.isEmpty() ? null : (y[]) arrayList7.toArray(new y[arrayList7.size()]), true, 0, true, false, false);
                }
                return this.f3213p;
            case 3:
                if (this.f3214q == null) {
                    Intent intent5 = new Intent(MediaIntentReceiver.ACTION_FORWARD);
                    intent5.setComponent(componentName);
                    intent5.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j10);
                    PendingIntent broadcast5 = PendingIntent.getBroadcast(context, 0, intent5, AbstractC2513x.f22816a | 134217728);
                    H3.b bVar = m.f3245a;
                    int i16 = gVar.f2877Q;
                    if (j10 == 10000) {
                        i16 = gVar.f2878R;
                        j8 = 30000;
                    } else {
                        j8 = 30000;
                        if (j10 == 30000) {
                            i16 = gVar.f2879S;
                        }
                    }
                    if (j10 == 10000) {
                        i10 = gVar.f2892f0;
                    } else {
                        i10 = j10 != j8 ? gVar.f2891e0 : gVar.f2893g0;
                    }
                    String string5 = resources.getString(i10);
                    IconCompat iconCompatC5 = i16 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i16);
                    Bundle bundle5 = new Bundle();
                    CharSequence charSequenceB5 = o.b(string5);
                    ArrayList arrayList9 = new ArrayList();
                    ArrayList arrayList10 = new ArrayList();
                    this.f3214q = new D.j(iconCompatC5, charSequenceB5, broadcast5, bundle5, arrayList10.isEmpty() ? null : (y[]) arrayList10.toArray(new y[arrayList10.size()]), arrayList9.isEmpty() ? null : (y[]) arrayList9.toArray(new y[arrayList9.size()]), true, 0, true, false, false);
                }
                return this.f3214q;
            case 4:
                if (this.f3215r == null) {
                    Intent intent6 = new Intent(MediaIntentReceiver.ACTION_REWIND);
                    intent6.setComponent(componentName);
                    intent6.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j10);
                    PendingIntent broadcast6 = PendingIntent.getBroadcast(context, 0, intent6, AbstractC2513x.f22816a | 134217728);
                    H3.b bVar2 = m.f3245a;
                    int i17 = gVar.f2880T;
                    if (j10 == 10000) {
                        i17 = gVar.f2881U;
                        j9 = 30000;
                    } else {
                        j9 = 30000;
                        if (j10 == 30000) {
                            i17 = gVar.f2882V;
                        }
                    }
                    if (j10 == 10000) {
                        i11 = gVar.f2895i0;
                    } else {
                        i11 = j10 != j9 ? gVar.f2894h0 : gVar.f2896j0;
                    }
                    String string6 = resources.getString(i11);
                    IconCompat iconCompatC6 = i17 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i17);
                    Bundle bundle6 = new Bundle();
                    CharSequence charSequenceB6 = o.b(string6);
                    ArrayList arrayList11 = new ArrayList();
                    ArrayList arrayList12 = new ArrayList();
                    this.f3215r = new D.j(iconCompatC6, charSequenceB6, broadcast6, bundle6, arrayList12.isEmpty() ? null : (y[]) arrayList12.toArray(new y[arrayList12.size()]), arrayList11.isEmpty() ? null : (y[]) arrayList11.toArray(new y[arrayList11.size()]), true, 0, true, false, false);
                }
                return this.f3215r;
            case 5:
                if (this.f3217t == null) {
                    Intent intent7 = new Intent(MediaIntentReceiver.ACTION_STOP_CASTING);
                    intent7.setComponent(componentName);
                    PendingIntent broadcast7 = PendingIntent.getBroadcast(context, 0, intent7, AbstractC2513x.f22816a);
                    int i18 = gVar.f2883W;
                    String string7 = resources.getString(gVar.f2897k0);
                    IconCompat iconCompatC7 = i18 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i18);
                    Bundle bundle7 = new Bundle();
                    CharSequence charSequenceB7 = o.b(string7);
                    ArrayList arrayList13 = new ArrayList();
                    ArrayList arrayList14 = new ArrayList();
                    this.f3217t = new D.j(iconCompatC7, charSequenceB7, broadcast7, bundle7, arrayList14.isEmpty() ? null : (y[]) arrayList14.toArray(new y[arrayList14.size()]), arrayList13.isEmpty() ? null : (y[]) arrayList13.toArray(new y[arrayList13.size()]), true, 0, true, false, false);
                }
                return this.f3217t;
            case 6:
                if (this.f3216s == null) {
                    Intent intent8 = new Intent(MediaIntentReceiver.ACTION_DISCONNECT);
                    intent8.setComponent(componentName);
                    PendingIntent broadcast8 = PendingIntent.getBroadcast(context, 0, intent8, AbstractC2513x.f22816a);
                    int i19 = gVar.f2883W;
                    String string8 = resources.getString(gVar.f2897k0, HttpUrl.FRAGMENT_ENCODE_SET);
                    IconCompat iconCompatC8 = i19 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i19);
                    Bundle bundle8 = new Bundle();
                    CharSequence charSequenceB8 = o.b(string8);
                    ArrayList arrayList15 = new ArrayList();
                    ArrayList arrayList16 = new ArrayList();
                    this.f3216s = new D.j(iconCompatC8, charSequenceB8, broadcast8, bundle8, arrayList16.isEmpty() ? null : (y[]) arrayList16.toArray(new y[arrayList16.size()]), arrayList15.isEmpty() ? null : (y[]) arrayList15.toArray(new y[arrayList15.size()]), true, 0, true, false, false);
                }
                return this.f3216s;
            default:
                H3.b bVar3 = f3197u;
                Log.e(bVar3.f3679a, bVar3.c("Action: %s is not a pre-defined action.", str));
                return null;
        }
    }

    public final void b() {
        PendingIntent activities;
        D.j jVarA;
        NotificationManager notificationManager = this.f3199b;
        if (notificationManager == null || this.f3208k == null) {
            return;
        }
        p096m2.e eVar = this.f3209l;
        Bitmap bitmap = eVar == null ? null : (Bitmap) eVar.f27216I;
        Context context = this.f3198a;
        o oVar = new o(context, "cast_media_notification");
        oVar.d(bitmap);
        E3.g gVar = this.f3200c;
        oVar.f1726q.icon = gVar.f2871K;
        oVar.f1714e = o.b(this.f3208k.f3193d);
        oVar.f1715f = o.b(this.f3207j.getString(gVar.f2885Y, this.f3208k.f3194e));
        oVar.c(2);
        oVar.f1719j = false;
        oVar.f1723n = 1;
        ComponentName componentName = this.f3202e;
        if (componentName == null) {
            activities = null;
        } else {
            Intent intent = new Intent();
            intent.putExtra("targetActivity", componentName);
            intent.setAction(componentName.flattenToString());
            intent.setComponent(componentName);
            ArrayList arrayList = new ArrayList();
            ComponentName component = intent.getComponent();
            if (component == null) {
                component = intent.resolveActivity(context.getPackageManager());
            }
            if (component != null) {
                int size = arrayList.size();
                try {
                    for (Intent intentI = p102n0.c.i(context, component); intentI != null; intentI = p102n0.c.i(context, intentI.getComponent())) {
                        arrayList.add(size, intentI);
                    }
                } catch (PackageManager.NameNotFoundException e8) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e8);
                }
            }
            arrayList.add(intent);
            int i8 = AbstractC2513x.f22816a | 134217728;
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            activities = PendingIntent.getActivities(context, 1, intentArr, i8, null);
        }
        if (activities != null) {
            oVar.f1716g = activities;
        }
        t tVar = gVar.f2898l0;
        H3.b bVar = f3197u;
        if (tVar != null) {
            bVar.b("actionsProvider != null", new Object[0]);
            int[] iArrB = m.b(tVar);
            this.f3204g = iArrB == null ? null : (int[]) iArrB.clone();
            ArrayList<E3.e> arrayListA = m.a(tVar);
            this.f3203f = new ArrayList();
            if (arrayListA != null) {
                for (E3.e eVar2 : arrayListA) {
                    String str = eVar2.f2853G;
                    boolean zEquals = str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                    String str2 = eVar2.f2853G;
                    if (zEquals || str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT) || str.equals(MediaIntentReceiver.ACTION_SKIP_PREV) || str.equals(MediaIntentReceiver.ACTION_FORWARD) || str.equals(MediaIntentReceiver.ACTION_REWIND) || str.equals(MediaIntentReceiver.ACTION_STOP_CASTING) || str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                        jVarA = a(str2);
                    } else {
                        Intent intent2 = new Intent(str2);
                        intent2.setComponent(this.f3201d);
                        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, AbstractC2513x.f22816a);
                        int i9 = eVar2.f2854H;
                        IconCompat iconCompatC = i9 == 0 ? null : IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i9);
                        Bundle bundle = new Bundle();
                        CharSequence charSequenceB = o.b(eVar2.f2855I);
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        jVarA = new D.j(iconCompatC, charSequenceB, broadcast, bundle, arrayList3.isEmpty() ? null : (y[]) arrayList3.toArray(new y[arrayList3.size()]), arrayList2.isEmpty() ? null : (y[]) arrayList2.toArray(new y[arrayList2.size()]), true, 0, true, false, false);
                    }
                    if (jVarA != null) {
                        this.f3203f.add(jVarA);
                    }
                }
            }
        } else {
            bVar.b("actionsProvider == null", new Object[0]);
            this.f3203f = new ArrayList();
            Iterator it = gVar.f2867G.iterator();
            while (it.hasNext()) {
                D.j jVarA2 = a((String) it.next());
                if (jVarA2 != null) {
                    this.f3203f.add(jVarA2);
                }
            }
            int[] iArr = gVar.f2868H;
            this.f3204g = (int[]) Arrays.copyOf(iArr, iArr.length).clone();
        }
        for (D.j jVar : this.f3203f) {
            if (jVar != null) {
                oVar.f1711b.add(jVar);
            }
        }
        p080k0.c cVar = new p080k0.c();
        cVar.f25901b = null;
        int[] iArr2 = this.f3204g;
        if (iArr2 != null) {
            cVar.f25901b = iArr2;
        }
        MediaSessionCompat.Token token = this.f3208k.f3190a;
        if (token != null) {
            cVar.f25902c = token;
        }
        oVar.e(cVar);
        notificationManager.notify("castMediaNotification", 1, oVar.a());
    }
}
