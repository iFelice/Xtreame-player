package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class F1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Uri f22912a = Uri.parse("content://com.google.android.gsf.gservices");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f22913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f22914c;

    static {
        Uri.parse("content://com.google.android.gsf.gservices/prefix");
        f22913b = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
        f22914c = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    }
}
