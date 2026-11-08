package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class P2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final P2 f22516e = new P2(new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f22517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f22518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f22519c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f22520d;

    public P2(int[] iArr, Object[] objArr, boolean z7) {
        this.f22517a = iArr;
        this.f22518b = objArr;
        this.f22520d = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof P2)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 506991;
    }
}
