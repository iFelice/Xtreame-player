package D;

import A0.O;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.HttpUrl;
import p086l.H;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Notification.Builder f1730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f1731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bundle f1732d;

    public t(o oVar) {
        Bundle[] bundleArr;
        int i8;
        ArrayList arrayList;
        int i9;
        new ArrayList();
        this.f1732d = new Bundle();
        this.f1731c = oVar;
        Context context = oVar.f1710a;
        this.f1729a = context;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            this.f1730b = r.a(context, oVar.f1724o);
        } else {
            this.f1730b = new Notification.Builder(oVar.f1710a);
        }
        Notification notification = oVar.f1726q;
        Resources resources = null;
        this.f1730b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(oVar.f1714e).setContentText(oVar.f1715f).setContentInfo(null).setContentIntent(oVar.f1716g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(0).setProgress(0, 0, false);
        int i11 = 23;
        if (i10 < 23) {
            Notification.Builder builder = this.f1730b;
            IconCompat iconCompat = oVar.f1717h;
            builder.setLargeIcon(iconCompat == null ? null : iconCompat.d());
        } else {
            Notification.Builder builder2 = this.f1730b;
            IconCompat iconCompat2 = oVar.f1717h;
            H.s(builder2, iconCompat2 == null ? null : iconCompat2.j(context));
        }
        this.f1730b.setSubText(null).setUsesChronometer(false).setPriority(oVar.f1718i);
        for (j jVar : oVar.f1711b) {
            int i12 = Build.VERSION.SDK_INT;
            if (jVar.f1696b == null && (i9 = jVar.f1702h) != 0) {
                jVar.f1696b = IconCompat.c(null, HttpUrl.FRAGMENT_ENCODE_SET, i9);
            }
            IconCompat iconCompat3 = jVar.f1696b;
            PendingIntent pendingIntent = jVar.f1704j;
            CharSequence charSequence = jVar.f1703i;
            Notification.Action.Builder builderA = i12 >= i11 ? H.a(iconCompat3 != null ? iconCompat3.j(null) : null, charSequence, pendingIntent) : new Notification.Action.Builder(iconCompat3 != null ? iconCompat3.e() : 0, charSequence, pendingIntent);
            y[] yVarArr = jVar.f1697c;
            if (yVarArr != null) {
                int length = yVarArr.length;
                RemoteInput[] remoteInputArr = new RemoteInput[length];
                if (yVarArr.length > 0) {
                    y yVar = yVarArr[0];
                    throw null;
                }
                for (int i13 = 0; i13 < length; i13++) {
                    builderA.addRemoteInput(remoteInputArr[i13]);
                }
            }
            Bundle bundle = jVar.f1695a;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            boolean z7 = jVar.f1698d;
            bundle2.putBoolean("android.support.allowGeneratedReplies", z7);
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 24) {
                q.f(builderA, z7);
            }
            int i15 = jVar.f1700f;
            bundle2.putInt("android.support.action.semanticAction", i15);
            if (i14 >= 28) {
                p093m.d.m(builderA, i15);
            }
            if (i14 >= 29) {
                g.j(builderA, jVar.f1701g);
            }
            if (i14 >= 31) {
                s.a(builderA, jVar.f1705k);
            }
            bundle2.putBoolean("android.support.action.showsUserInterface", jVar.f1699e);
            builderA.addExtras(bundle2);
            this.f1730b.addAction(builderA.build());
            i11 = 23;
        }
        Bundle bundle3 = oVar.f1722m;
        if (bundle3 != null) {
            this.f1732d.putAll(bundle3);
        }
        int i16 = Build.VERSION.SDK_INT;
        this.f1730b.setShowWhen(oVar.f1719j);
        this.f1730b.setLocalOnly(oVar.f1721l);
        this.f1730b.setGroup(null);
        this.f1730b.setSortKey(null);
        this.f1730b.setGroupSummary(false);
        this.f1730b.setCategory(null);
        this.f1730b.setColor(0);
        this.f1730b.setVisibility(oVar.f1723n);
        this.f1730b.setPublicVersion(null);
        this.f1730b.setSound(notification.sound, notification.audioAttributes);
        ArrayList arrayList2 = oVar.f1712c;
        ArrayList arrayList3 = oVar.f1727r;
        if (i16 < 28) {
            if (arrayList2 == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(arrayList2.size());
                Iterator it = arrayList2.iterator();
                if (it.hasNext()) {
                    O.I(it.next());
                    throw null;
                }
            }
            if (arrayList != null) {
                if (arrayList3 == null) {
                    arrayList3 = arrayList;
                } else {
                    p132r.g gVar = new p132r.g(arrayList3.size() + arrayList.size());
                    gVar.addAll(arrayList);
                    gVar.addAll(arrayList3);
                    arrayList3 = new ArrayList(gVar);
                }
            }
        }
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                this.f1730b.addPerson((String) it2.next());
            }
        }
        ArrayList arrayList4 = oVar.f1713d;
        if (arrayList4.size() > 0) {
            if (oVar.f1722m == null) {
                oVar.f1722m = new Bundle();
            }
            Bundle bundle4 = oVar.f1722m.getBundle("android.car.EXTENSIONS");
            bundle4 = bundle4 == null ? new Bundle() : bundle4;
            Bundle bundle5 = new Bundle(bundle4);
            Bundle bundle6 = new Bundle();
            int i17 = 0;
            while (i17 < arrayList4.size()) {
                String string = Integer.toString(i17);
                j jVar2 = (j) arrayList4.get(i17);
                Bundle bundle7 = new Bundle();
                if (jVar2.f1696b == null && (i8 = jVar2.f1702h) != 0) {
                    jVar2.f1696b = IconCompat.c(resources, HttpUrl.FRAGMENT_ENCODE_SET, i8);
                }
                IconCompat iconCompat4 = jVar2.f1696b;
                bundle7.putInt("icon", iconCompat4 != null ? iconCompat4.e() : 0);
                bundle7.putCharSequence("title", jVar2.f1703i);
                bundle7.putParcelable("actionIntent", jVar2.f1704j);
                Bundle bundle8 = jVar2.f1695a;
                Bundle bundle9 = bundle8 != null ? new Bundle(bundle8) : new Bundle();
                bundle9.putBoolean("android.support.allowGeneratedReplies", jVar2.f1698d);
                bundle7.putBundle("extras", bundle9);
                y[] yVarArr2 = jVar2.f1697c;
                if (yVarArr2 == null) {
                    bundleArr = null;
                } else {
                    bundleArr = new Bundle[yVarArr2.length];
                    if (yVarArr2.length > 0) {
                        y yVar2 = yVarArr2[0];
                        new Bundle();
                        throw null;
                    }
                }
                bundle7.putParcelableArray("remoteInputs", bundleArr);
                bundle7.putBoolean("showsUserInterface", jVar2.f1699e);
                bundle7.putInt("semanticAction", jVar2.f1700f);
                bundle6.putBundle(string, bundle7);
                i17++;
                arrayList4 = arrayList4;
                resources = null;
            }
            bundle4.putBundle("invisible_actions", bundle6);
            bundle5.putBundle("invisible_actions", bundle6);
            if (oVar.f1722m == null) {
                oVar.f1722m = new Bundle();
            }
            oVar.f1722m.putBundle("android.car.EXTENSIONS", bundle4);
            this.f1732d.putBundle("android.car.EXTENSIONS", bundle5);
        }
        int i18 = Build.VERSION.SDK_INT;
        if (i18 >= 24) {
            this.f1730b.setExtras(oVar.f1722m);
            q.g(this.f1730b);
        }
        if (i18 >= 26) {
            r.h(this.f1730b);
            r.n(this.f1730b);
            r.o(this.f1730b);
            r.p(this.f1730b);
            r.j(this.f1730b);
            if (!TextUtils.isEmpty(oVar.f1724o)) {
                this.f1730b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i18 >= 28) {
            Iterator it3 = arrayList2.iterator();
            if (it3.hasNext()) {
                O.I(it3.next());
                throw null;
            }
        }
        if (i18 >= 29) {
            g.h(this.f1730b, oVar.f1725p);
            g.i(this.f1730b);
        }
    }
}
