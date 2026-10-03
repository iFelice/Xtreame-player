package com.google.android.gms.internal.ads;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1229dw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pattern f18389a;

    public C1229dw() {
        Pattern patternCompile;
        try {
            patternCompile = Pattern.compile((String) C3099q.f26624d.f26627c.a(Q7.f15921q6));
        } catch (PatternSyntaxException unused) {
            patternCompile = null;
        }
        this.f18389a = patternCompile;
    }
}
