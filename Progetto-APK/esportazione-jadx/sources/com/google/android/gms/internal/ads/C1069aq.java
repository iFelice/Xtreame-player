package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1069aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f17976c;

    public C1069aq(String str, String str2, Drawable drawable) {
        if (str == null) {
            throw new NullPointerException("Null advertiserName");
        }
        this.f17974a = str;
        if (str2 == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.f17975b = str2;
        this.f17976c = drawable;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1069aq) {
            C1069aq c1069aq = (C1069aq) obj;
            if (this.f17974a.equals(c1069aq.f17974a) && this.f17975b.equals(c1069aq.f17975b)) {
                Drawable drawable = c1069aq.f17976c;
                Drawable drawable2 = this.f17976c;
                if (drawable2 != null ? drawable2.equals(drawable) : drawable == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.f17974a.hashCode() ^ 1000003) * 1000003) ^ this.f17975b.hashCode();
        Drawable drawable = this.f17976c;
        return (iHashCode * 1000003) ^ (drawable == null ? 0 : drawable.hashCode());
    }

    public final String toString() {
        return "OfflineAdAssets{advertiserName=" + this.f17974a + ", imageUrl=" + this.f17975b + ", icon=" + String.valueOf(this.f17976c) + "}";
    }
}
