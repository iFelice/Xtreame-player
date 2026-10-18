package com.google.android.gms.internal.ads;

import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1392h2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f19047a = Pattern.compile("\\{([^}]*)\\}");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f19048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f19049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f19050d;

    static {
        Locale locale = Locale.US;
        f19048b = Pattern.compile(String.format(locale, "\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f19049c = Pattern.compile(String.format(locale, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f19050d = Pattern.compile("\\\\an(\\d+)");
    }
}
