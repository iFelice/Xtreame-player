package com.google.android.gms.internal.ads;

import java.util.LinkedList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1643lw {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f19879c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedList f19877a = new LinkedList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2370zw f19880d = new C2370zw();

    public C1643lw(int i8, int i9) {
        this.f19878b = i8;
        this.f19879c = i9;
    }

    public final void a() {
        while (true) {
            LinkedList linkedList = this.f19877a;
            if (linkedList.isEmpty()) {
                return;
            }
            C1851pw c1851pw = (C1851pw) linkedList.getFirst();
            p083k3.l.f25980A.f25990j.getClass();
            if (System.currentTimeMillis() - c1851pw.f20506d < this.f19879c) {
                return;
            }
            C2370zw c2370zw = this.f19880d;
            c2370zw.f22234f++;
            c2370zw.f22230b.f22091H++;
            linkedList.remove();
        }
    }
}
