package O1;

import android.graphics.Rect;
import android.view.View;
import com.google.android.gms.internal.pal.C2727h2;
import java.util.Collection;

/* JADX INFO: renamed from: O1.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0326z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5561c;

    public AbstractC0326z(int i8, String str, Object obj) {
        this.f5559a = i8;
        this.f5560b = str;
        this.f5561c = obj;
        ((Collection) C2727h2.f23833d.f23834a.f23851G).add(this);
    }

    public static C0325y a(L l4, int i8) {
        if (i8 == 0) {
            return new C0325y(l4, 0);
        }
        int i9 = 1;
        if (i8 == 1) {
            return new C0325y(l4, i9);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static void n(int i8, String str) {
        new C0325y(str, 1, Integer.valueOf(i8));
    }

    public static C0325y o(long j8, String str) {
        return new C0325y(str, 2, Long.valueOf(j8));
    }

    public static C0325y p(int i8, String str, Boolean bool) {
        return new C0325y(i8, str, bool);
    }

    public static C0325y q(String str, String str2) {
        return new C0325y(str, 4, str2);
    }

    public static void r() {
        ((Collection) C2727h2.f23833d.f23834a.f23852H).add(q("gads:sdk_core_constants:experiment_id", null));
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e();

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public final int j() {
        if (Integer.MIN_VALUE == this.f5559a) {
            return 0;
        }
        return i() - this.f5559a;
    }

    public abstract int k(View view);

    public abstract int l(View view);

    public abstract void m(int i8);

    public AbstractC0326z(L l4) {
        this.f5559a = Integer.MIN_VALUE;
        this.f5561c = new Rect();
        this.f5560b = l4;
    }
}
