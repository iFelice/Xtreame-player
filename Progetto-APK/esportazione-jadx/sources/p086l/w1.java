package p086l;

import android.os.Build;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class w1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f26407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f26408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f26409c;

    static {
        f26409c = Build.VERSION.SDK_INT >= 27;
    }
}
