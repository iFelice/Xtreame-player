package com.google.android.gms.common.internal;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.common.internal.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0645v implements com.google.android.gms.common.api.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0645v f11900c = new C0645v(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11901b;

    public /* synthetic */ C0645v(String str) {
        this.f11901b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0645v) {
            return U4.a.c(this.f11901b, ((C0645v) obj).f11901b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11901b});
    }
}
