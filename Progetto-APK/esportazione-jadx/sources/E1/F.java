package E1;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Objects;
import org.videolan.libvlc.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public final class F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f2627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f2632f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2633g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2634h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2635i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2637k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2638l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2639m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2640n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2641o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2642p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Bundle f2644r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public IntentSender f2645s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public C0173h f2646t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public p132r.f f2648v;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f2636j = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2643q = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public ArrayList f2647u = new ArrayList();

    public F(E e8, String str, String str2) {
        this.f2627a = e8;
        this.f2628b = str;
        this.f2629c = str2;
    }

    public final AbstractC0179n a() {
        E e8 = this.f2627a;
        e8.getClass();
        H.b();
        return e8.f2622a;
    }

    public final int b() {
        Bundle bundle;
        if (Collections.unmodifiableList(this.f2647u).size() >= 1) {
            if (H.f2649c == null) {
                return 0;
            }
            Q q7 = H.c().f2600q;
            if (q7 != null && (bundle = q7.f2667d) != null && !bundle.getBoolean("androidx.mediarouter.media.MediaRouterParams.ENABLE_GROUP_VOLUME_UX", true)) {
                return 0;
            }
        }
        return this.f2640n;
    }

    public final boolean c() {
        H.b();
        F f8 = H.c().f2601r;
        if (f8 == null) {
            throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
        }
        if ((f8 == this) || this.f2639m == 3) {
            return true;
        }
        return TextUtils.equals(((ComponentName) a().f2786b.f2740b).getPackageName(), "android") && i("android.media.intent.category.LIVE_AUDIO") && !i("android.media.intent.category.LIVE_VIDEO");
    }

    public final boolean d() {
        return this.f2646t != null && this.f2633g;
    }

    public final boolean e(C0181p c0181p) {
        if (c0181p == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        H.b();
        ArrayList<IntentFilter> arrayList = this.f2636j;
        if (arrayList == null) {
            return false;
        }
        c0181p.a();
        if (c0181p.f2797b.isEmpty()) {
            return false;
        }
        for (IntentFilter intentFilter : arrayList) {
            if (intentFilter != null) {
                Iterator it = c0181p.f2797b.iterator();
                while (it.hasNext()) {
                    if (intentFilter.hasCategory((String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int f(C0173h c0173h) {
        int i8;
        F f8;
        int iCountActions;
        if (this.f2646t == c0173h) {
            return 0;
        }
        this.f2646t = c0173h;
        if (c0173h == null) {
            return 0;
        }
        String str = this.f2630d;
        Bundle bundle = c0173h.f2745a;
        if (Objects.equals(str, bundle.getString("name"))) {
            i8 = 0;
        } else {
            this.f2630d = bundle.getString("name");
            i8 = 1;
        }
        if (!Objects.equals(this.f2631e, bundle.getString("status"))) {
            this.f2631e = bundle.getString("status");
            i8 = 1;
        }
        Uri uri = this.f2632f;
        String string = bundle.getString("iconUri");
        if (!Objects.equals(uri, string == null ? null : Uri.parse(string))) {
            String string2 = bundle.getString("iconUri");
            this.f2632f = string2 == null ? null : Uri.parse(string2);
            i8 = 1;
        }
        if (this.f2633g != bundle.getBoolean("enabled", true)) {
            this.f2633g = bundle.getBoolean("enabled", true);
            i8 = 1;
        }
        if (this.f2634h != bundle.getInt("connectionState", 0)) {
            this.f2634h = bundle.getInt("connectionState", 0);
            i8 = 1;
        }
        ArrayList arrayList = this.f2636j;
        ArrayList arrayListB = c0173h.b();
        if (arrayList != arrayListB) {
            if (arrayList != null) {
                ListIterator listIterator = arrayList.listIterator();
                ListIterator listIterator2 = arrayListB.listIterator();
                while (true) {
                    if (listIterator.hasNext() && listIterator2.hasNext()) {
                        IntentFilter intentFilter = (IntentFilter) listIterator.next();
                        IntentFilter intentFilter2 = (IntentFilter) listIterator2.next();
                        if (intentFilter != intentFilter2) {
                            if (intentFilter != null && intentFilter2 != null && (iCountActions = intentFilter.countActions()) == intentFilter2.countActions()) {
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= iCountActions) {
                                        int iCountCategories = intentFilter.countCategories();
                                        if (iCountCategories == intentFilter2.countCategories()) {
                                            int i10 = 0;
                                            while (true) {
                                                if (i10 >= iCountCategories) {
                                                    continue;
                                                } else if (intentFilter.getCategory(i10).equals(intentFilter2.getCategory(i10))) {
                                                    i10++;
                                                }
                                            }
                                        }
                                    } else if (intentFilter.getAction(i9).equals(intentFilter2.getAction(i9))) {
                                        i9++;
                                    }
                                }
                            }
                        }
                    } else if (listIterator.hasNext() || listIterator2.hasNext()) {
                    }
                    arrayList.clear();
                    arrayList.addAll(c0173h.b());
                    i8 = 1;
                }
            } else {
                arrayList.clear();
                arrayList.addAll(c0173h.b());
                i8 = 1;
            }
        }
        if (this.f2637k != bundle.getInt("playbackType", 1)) {
            this.f2637k = bundle.getInt("playbackType", 1);
            i8 = 1;
        }
        if (this.f2638l != bundle.getInt("playbackStream", -1)) {
            this.f2638l = bundle.getInt("playbackStream", -1);
            i8 = 1;
        }
        if (this.f2639m != bundle.getInt("deviceType")) {
            this.f2639m = bundle.getInt("deviceType");
            i8 = 1;
        }
        int i11 = 3;
        if (this.f2640n != bundle.getInt("volumeHandling", 0)) {
            this.f2640n = bundle.getInt("volumeHandling", 0);
            i8 = 3;
        }
        if (this.f2641o != bundle.getInt("volume")) {
            this.f2641o = bundle.getInt("volume");
            i8 = 3;
        }
        if (this.f2642p != bundle.getInt("volumeMax")) {
            this.f2642p = bundle.getInt("volumeMax");
        } else {
            i11 = i8;
        }
        if (this.f2643q != bundle.getInt("presentationDisplayId", -1)) {
            this.f2643q = bundle.getInt("presentationDisplayId", -1);
            i11 |= 5;
        }
        if (!Objects.equals(this.f2644r, bundle.getBundle("extras"))) {
            this.f2644r = bundle.getBundle("extras");
            i11 |= 1;
        }
        if (!Objects.equals(this.f2645s, (IntentSender) bundle.getParcelable("settingsIntent"))) {
            this.f2645s = (IntentSender) bundle.getParcelable("settingsIntent");
            i11 |= 1;
        }
        if (this.f2635i != bundle.getBoolean("canDisconnect", false)) {
            this.f2635i = bundle.getBoolean("canDisconnect", false);
            i11 |= 5;
        }
        ArrayList<String> arrayListC = c0173h.c();
        ArrayList arrayList2 = new ArrayList();
        boolean z7 = arrayListC.size() != this.f2647u.size();
        if (!arrayListC.isEmpty()) {
            A aC = H.c();
            for (String str2 : arrayListC) {
                aC.getClass();
                String str3 = (String) aC.f2592i.get(new M.b(((ComponentName) this.f2627a.f2625d.f2740b).flattenToShortString(), str2));
                Iterator it = aC.f2591h.iterator();
                do {
                    if (!it.hasNext()) {
                        f8 = null;
                        break;
                    }
                    f8 = (F) it.next();
                } while (!f8.f2629c.equals(str3));
                if (f8 != null) {
                    arrayList2.add(f8);
                    if (!z7 && !this.f2647u.contains(f8)) {
                        z7 = true;
                    }
                }
            }
        }
        if (!z7) {
            return i11;
        }
        this.f2647u = arrayList2;
        return i11 | 1;
    }

    public final void g(int i8) {
        AbstractC0178m abstractC0178m;
        AbstractC0178m abstractC0178m2;
        H.b();
        A aC = H.c();
        int iMin = Math.min(this.f2642p, Math.max(0, i8));
        if (this == aC.f2603t && (abstractC0178m2 = aC.f2604u) != null) {
            abstractC0178m2.f(iMin);
            return;
        }
        HashMap map = aC.f2607x;
        if (map.isEmpty() || (abstractC0178m = (AbstractC0178m) map.get(this.f2629c)) == null) {
            return;
        }
        abstractC0178m.f(iMin);
    }

    public final void h(int i8) {
        AbstractC0178m abstractC0178m;
        AbstractC0178m abstractC0178m2;
        H.b();
        if (i8 != 0) {
            A aC = H.c();
            if (this == aC.f2603t && (abstractC0178m2 = aC.f2604u) != null) {
                abstractC0178m2.i(i8);
                return;
            }
            HashMap map = aC.f2607x;
            if (map.isEmpty() || (abstractC0178m = (AbstractC0178m) map.get(this.f2629c)) == null) {
                return;
            }
            abstractC0178m.i(i8);
        }
    }

    public final boolean i(String str) {
        H.b();
        ArrayList arrayList = this.f2636j;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (((IntentFilter) arrayList.get(i8)).hasCategory(str)) {
                return true;
            }
        }
        return false;
    }

    public final void j(Collection collection) {
        this.f2647u.clear();
        if (this.f2648v == null) {
            this.f2648v = new p132r.f(0);
        }
        this.f2648v.clear();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            C0176k c0176k = (C0176k) it.next();
            F fA = this.f2627a.a(c0176k.f2761a.d());
            if (fA != null) {
                this.f2648v.put(fA.f2629c, c0176k);
                int i8 = c0176k.f2762b;
                if (i8 == 2 || i8 == 3) {
                    this.f2647u.add(fA);
                }
            }
        }
        H.c().f2597n.b(MediaPlayer.Event.Buffering, this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaRouter.RouteInfo{ uniqueId=");
        sb.append(this.f2629c);
        sb.append(", name=");
        sb.append(this.f2630d);
        sb.append(", description=");
        sb.append(this.f2631e);
        sb.append(", iconUri=");
        sb.append(this.f2632f);
        sb.append(", enabled=");
        sb.append(this.f2633g);
        sb.append(", connectionState=");
        sb.append(this.f2634h);
        sb.append(", canDisconnect=");
        sb.append(this.f2635i);
        sb.append(", playbackType=");
        sb.append(this.f2637k);
        sb.append(", playbackStream=");
        sb.append(this.f2638l);
        sb.append(", deviceType=");
        sb.append(this.f2639m);
        sb.append(", volumeHandling=");
        sb.append(this.f2640n);
        sb.append(", volume=");
        sb.append(this.f2641o);
        sb.append(", volumeMax=");
        sb.append(this.f2642p);
        sb.append(", presentationDisplayId=");
        sb.append(this.f2643q);
        sb.append(", extras=");
        sb.append(this.f2644r);
        sb.append(", settingsIntent=");
        sb.append(this.f2645s);
        sb.append(", providerPackageName=");
        sb.append(((ComponentName) this.f2627a.f2625d.f2740b).getPackageName());
        if (Collections.unmodifiableList(this.f2647u).size() >= 1) {
            sb.append(", members=[");
            int size = this.f2647u.size();
            for (int i8 = 0; i8 < size; i8++) {
                if (i8 > 0) {
                    sb.append(", ");
                }
                if (this.f2647u.get(i8) != this) {
                    sb.append(((F) this.f2647u.get(i8)).f2629c);
                }
            }
            sb.append(']');
        }
        sb.append(" }");
        return sb.toString();
    }
}
