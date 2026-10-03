package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class YM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f17602c;

    public YM(String str, boolean z7, boolean z8) {
        this.f17600a = str;
        this.f17601b = z7;
        this.f17602c = z8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == YM.class) {
            YM ym = (YM) obj;
            if (TextUtils.equals(this.f17600a, ym.f17600a) && this.f17601b == ym.f17601b && this.f17602c == ym.f17602c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f17600a.hashCode() + 31) * 31) + (true != this.f17601b ? 1237 : 1231)) * 31) + (true != this.f17602c ? 1237 : 1231);
    }
}
