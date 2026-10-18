package com.google.android.gms.internal.ads;

import java.util.function.Predicate;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1440hz implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        String str = (String) obj;
        if (str == null) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        return !str.trim().isEmpty();
    }
}
