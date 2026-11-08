package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1539jw implements InterfaceC1993sj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final HashSet f19532G = new HashSet();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f19533H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1781oe f19534I;

    public C1539jw(Context context, C1781oe c1781oe) {
        this.f19533H = context;
        this.f19534I = c1781oe;
    }

    public final Bundle a() {
        C1781oe c1781oe = this.f19534I;
        Context context = this.f19533H;
        c1781oe.getClass();
        HashSet hashSet = new HashSet();
        synchronized (c1781oe.f20293a) {
            hashSet.addAll(c1781oe.f20297e);
            c1781oe.f20297e.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", c1781oe.f20296d.b(context, c1781oe.f20295c.a()));
        Bundle bundle2 = new Bundle();
        Iterator it = c1781oe.f20298f.iterator();
        if (it.hasNext()) {
            A0.O.I(it.next());
            throw null;
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(((C1315fe) it2.next()).a());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        b(hashSet);
        return bundle;
    }

    public final synchronized void b(HashSet hashSet) {
        this.f19532G.clear();
        this.f19532G.addAll(hashSet);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final synchronized void y(C3117z0 c3117z0) {
        if (c3117z0.f26629G != 3) {
            this.f19534I.h(this.f19532G);
        }
    }
}
