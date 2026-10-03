package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2193wb implements p136r3.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f21699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f21700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f21701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final M8 f21702d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f21704f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f21703e = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f21705g = new HashMap();

    public C2193wb(HashSet hashSet, boolean z7, int i8, M8 m8, ArrayList arrayList, boolean z8) {
        this.f21699a = hashSet;
        this.f21700b = z7;
        this.f21701c = i8;
        this.f21702d = m8;
        this.f21704f = z8;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str.startsWith("custom:")) {
                    String[] strArrSplit = str.split(":", 3);
                    if (strArrSplit.length == 3) {
                        if ("true".equals(strArrSplit[2])) {
                            this.f21705g.put(strArrSplit[1], Boolean.TRUE);
                        } else if ("false".equals(strArrSplit[2])) {
                            this.f21705g.put(strArrSplit[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.f21703e.add(str);
                }
            }
        }
    }

    @Override // p136r3.d
    public final int a() {
        return this.f21701c;
    }

    @Override // p136r3.d
    public final boolean b() {
        return this.f21704f;
    }

    @Override // p136r3.d
    public final boolean c() {
        return this.f21700b;
    }

    @Override // p136r3.d
    public final Set d() {
        return this.f21699a;
    }
}
