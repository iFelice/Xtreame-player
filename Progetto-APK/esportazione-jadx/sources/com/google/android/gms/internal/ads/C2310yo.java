package com.google.android.gms.internal.ads;

import p094m0.C3134q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2310yo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f22062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C3134q f22063b = new C3134q(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f22064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f22065d;

    public C2310yo(Object obj) {
        this.f22062a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2310yo.class != obj.getClass()) {
            return false;
        }
        return this.f22062a.equals(((C2310yo) obj).f22062a);
    }

    public final int hashCode() {
        return this.f22062a.hashCode();
    }
}
