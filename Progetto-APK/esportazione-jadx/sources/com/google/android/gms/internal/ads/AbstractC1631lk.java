package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.Spanned;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1631lk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f19833a = Integer.toString(0, 36);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f19834b = Integer.toString(1, 36);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f19835c = Integer.toString(2, 36);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f19836d = Integer.toString(3, 36);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f19837e = Integer.toString(4, 36);

    public static Bundle a(Spanned spanned, Object obj, int i8, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f19833a, spanned.getSpanStart(obj));
        bundle2.putInt(f19834b, spanned.getSpanEnd(obj));
        bundle2.putInt(f19835c, spanned.getSpanFlags(obj));
        bundle2.putInt(f19836d, i8);
        if (bundle != null) {
            bundle2.putBundle(f19837e, bundle);
        }
        return bundle2;
    }
}
