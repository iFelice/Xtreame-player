package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1452iA extends AbstractC1090bA {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f19268G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f19269H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C1502jA f19270I;

    public C1452iA(C1502jA c1502jA, int i8) {
        this.f19270I = c1502jA;
        Object obj = C1502jA.f19434P;
        this.f19268G = c1502jA.b()[i8];
        this.f19269H = i8;
    }

    public final void a() {
        int i8 = this.f19269H;
        Object obj = this.f19268G;
        C1502jA c1502jA = this.f19270I;
        if (i8 != -1 && i8 < c1502jA.size()) {
            if (com.google.android.gms.internal.measurement.H1.E(obj, c1502jA.b()[this.f19269H])) {
                return;
            }
        }
        Object obj2 = C1502jA.f19434P;
        this.f19269H = c1502jA.h(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f19268G;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        C1502jA c1502jA = this.f19270I;
        Map mapD = c1502jA.d();
        if (mapD != null) {
            return mapD.get(this.f19268G);
        }
        a();
        int i8 = this.f19269H;
        if (i8 == -1) {
            return null;
        }
        return c1502jA.c()[i8];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        C1502jA c1502jA = this.f19270I;
        Map mapD = c1502jA.d();
        Object obj2 = this.f19268G;
        if (mapD != null) {
            return mapD.put(obj2, obj);
        }
        a();
        int i8 = this.f19269H;
        if (i8 == -1) {
            c1502jA.put(obj2, obj);
            return null;
        }
        Object obj3 = c1502jA.c()[i8];
        c1502jA.c()[this.f19269H] = obj;
        return obj3;
    }
}
