package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2058tw implements InterfaceC1954rw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f21157a;

    public C2058tw(String str) {
        this.f21157a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2058tw) {
            return this.f21157a.equals(((C2058tw) obj).f21157a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f21157a.hashCode();
    }

    public final String toString() {
        return this.f21157a;
    }
}
