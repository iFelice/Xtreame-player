package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class Fx implements Ix {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Fx f13442e = new Fx(new Jx());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Date f13443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f13444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Jx f13445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f13446d;

    public Fx(Jx jx) {
        this.f13445c = jx;
    }

    @Override // com.google.android.gms.internal.ads.Ix
    public final void zzc(boolean z7) {
        if (!this.f13446d && z7) {
            Date date = new Date();
            Date date2 = this.f13443a;
            if (date2 == null || date.after(date2)) {
                this.f13443a = date;
                if (this.f13444b) {
                    Iterator it = Collections.unmodifiableCollection(Hx.f13820c.f13822b).iterator();
                    while (it.hasNext()) {
                        Px px = ((C2267xx) it.next()).f21959d;
                        Date date3 = this.f13443a;
                        px.c(date3 != null ? (Date) date3.clone() : null);
                    }
                }
            }
        }
        this.f13446d = z7;
    }
}
