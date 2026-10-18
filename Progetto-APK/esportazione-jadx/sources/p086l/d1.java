package p086l;

import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes.dex */
public abstract class d1 extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f26247a = new Object();

    public static void a(Context context) {
        if (context.getResources() instanceof f1) {
            return;
        }
        context.getResources();
        int i8 = t1.f26387a;
    }
}
