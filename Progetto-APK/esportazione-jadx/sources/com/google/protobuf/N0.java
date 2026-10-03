package com.google.protobuf;

import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes2.dex */
public final class N0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f24281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f24282b;

    public N0(Object obj, int i8) {
        this.f24281a = obj;
        this.f24282b = i8;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof N0)) {
            return false;
        }
        N0 n7 = (N0) obj;
        return this.f24281a == n7.f24281a && this.f24282b == n7.f24282b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f24281a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f24282b;
    }
}
