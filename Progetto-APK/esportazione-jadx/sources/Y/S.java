package Y;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class S {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final X f7790a = new X();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Z f7791b;

    static {
        Z z7;
        try {
            z7 = (Z) X1.l.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            z7 = null;
        }
        f7791b = z7;
    }

    public static void a(ArrayList arrayList, int i8) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i8);
        }
    }
}
