package p094m0;

import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet f26707a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f26708b = "media3.common";

    public static synchronized void a(String str) {
        if (f26707a.add(str)) {
            f26708b += ", " + str;
        }
    }
}
