package p110o0;

import android.os.Bundle;
import android.text.Spanned;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f27656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f27657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f27658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f27659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f27660e;

    static {
        String str = M.f28050a;
        f27656a = Integer.toString(0, 36);
        f27657b = Integer.toString(1, 36);
        f27658c = Integer.toString(2, 36);
        f27659d = Integer.toString(3, 36);
        f27660e = Integer.toString(4, 36);
    }

    public static Bundle a(Spanned spanned, Object obj, int i8, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f27656a, spanned.getSpanStart(obj));
        bundle2.putInt(f27657b, spanned.getSpanEnd(obj));
        bundle2.putInt(f27658c, spanned.getSpanFlags(obj));
        bundle2.putInt(f27659d, i8);
        if (bundle != null) {
            bundle2.putBundle(f27660e, bundle);
        }
        return bundle2;
    }
}
