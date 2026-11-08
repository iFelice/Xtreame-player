package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1555kB implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pattern f19593a;

    public C1555kB(Pattern pattern) {
        pattern.getClass();
        this.f19593a = pattern;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.f19593a.matcher(str).matches();
    }
}
