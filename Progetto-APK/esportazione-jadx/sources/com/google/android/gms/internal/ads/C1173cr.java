package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1173cr {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1816pC f18250c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InterfaceC1742nr f18253f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f18255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f18256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1690mr f18257j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Ov f18258k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f18248a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f18249b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f18251d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f18252e = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f18254g = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f18259l = false;

    public C1173cr(Tv tv, C1690mr c1690mr, C1816pC c1816pC) {
        this.f18256i = ((Qv) tv.f16755b.f21883I).f16166r;
        this.f18257j = c1690mr;
        this.f18250c = c1816pC;
        this.f18255h = C1949rr.a(tv);
        List list = (List) tv.f16755b.f21882H;
        for (int i8 = 0; i8 < list.size(); i8++) {
            this.f18248a.put((Ov) list.get(i8), Integer.valueOf(i8));
        }
        this.f18249b.addAll(list);
    }

    public final synchronized Ov a() {
        try {
            if (i()) {
                for (int i8 = 0; i8 < this.f18249b.size(); i8++) {
                    Ov ov = (Ov) this.f18249b.get(i8);
                    String str = ov.f15285t0;
                    if (!this.f18252e.contains(str)) {
                        if (ov.f15289v0) {
                            this.f18259l = true;
                        }
                        if (!TextUtils.isEmpty(str)) {
                            this.f18252e.add(str);
                        }
                        this.f18251d.add(ov);
                        return (Ov) this.f18249b.remove(i8);
                    }
                }
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(Ov ov) {
        this.f18259l = false;
        this.f18251d.remove(ov);
        this.f18252e.remove(ov.f15285t0);
        if (d() || h()) {
            return;
        }
        e();
    }

    public final synchronized void c(InterfaceC1742nr interfaceC1742nr, Ov ov) {
        this.f18259l = false;
        this.f18251d.remove(ov);
        if (d()) {
            interfaceC1742nr.zzr();
            return;
        }
        Integer num = (Integer) this.f18248a.get(ov);
        int iIntValue = num != null ? num.intValue() : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        if (iIntValue > this.f18254g) {
            this.f18257j.g(ov);
            return;
        }
        if (this.f18253f != null) {
            this.f18257j.g(this.f18258k);
        }
        this.f18254g = iIntValue;
        this.f18253f = interfaceC1742nr;
        this.f18258k = ov;
        if (h()) {
            return;
        }
        e();
    }

    public final synchronized boolean d() {
        return this.f18250c.isDone();
    }

    public final synchronized void e() {
        this.f18257j.d(this.f18258k);
        InterfaceC1742nr interfaceC1742nr = this.f18253f;
        if (interfaceC1742nr != null) {
            this.f18250c.f(interfaceC1742nr);
        } else {
            this.f18250c.g(new C1898qr(3, this.f18255h));
        }
    }

    public final synchronized boolean f(boolean z7) {
        try {
            for (Ov ov : this.f18249b) {
                Integer num = (Integer) this.f18248a.get(ov);
                int iIntValue = num != null ? num.intValue() : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                if (z7 || !this.f18252e.contains(ov.f15285t0)) {
                    int i8 = this.f18254g;
                    if (iIntValue < i8) {
                        return true;
                    }
                    if (iIntValue > i8) {
                        break;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean g() {
        try {
            Iterator it = this.f18251d.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) this.f18248a.get((Ov) it.next());
                if ((num != null ? num.intValue() : com.google.android.gms.common.api.d.API_PRIORITY_OTHER) < this.f18254g) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean h() {
        return f(true) || g();
    }

    public final synchronized boolean i() {
        if (this.f18259l) {
            return false;
        }
        if (!this.f18249b.isEmpty() && ((Ov) this.f18249b.get(0)).f15289v0 && !this.f18251d.isEmpty()) {
            return false;
        }
        if (!d()) {
            ArrayList arrayList = this.f18251d;
            if (arrayList.size() < this.f18256i && f(false)) {
                return true;
            }
        }
        return false;
    }
}
