package p110o0;

import android.graphics.Bitmap;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;
import okhttp3.HttpUrl;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final String f27615A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final String f27616B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final String f27617C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final String f27618D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final String f27619E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final String f27620F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final String f27621G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final String f27622H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final String f27623I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final String f27624J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final String f27625K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final String f27626L;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f27627s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f27628t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f27629u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f27630v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f27631w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f27632x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f27633y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f27634z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f27635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Layout.Alignment f27636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Layout.Alignment f27637c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bitmap f27638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f27639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f27640f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f27641g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f27642h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f27643i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f27644j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f27645k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f27646l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f27647m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f27648n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float f27649o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f27650p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final float f27651q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f27652r;

    static {
        new b(HttpUrl.FRAGMENT_ENCODE_SET, null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
        String str = M.f28050a;
        f27627s = Integer.toString(0, 36);
        f27628t = Integer.toString(17, 36);
        f27629u = Integer.toString(1, 36);
        f27630v = Integer.toString(2, 36);
        f27631w = Integer.toString(3, 36);
        f27632x = Integer.toString(18, 36);
        f27633y = Integer.toString(4, 36);
        f27634z = Integer.toString(5, 36);
        f27615A = Integer.toString(6, 36);
        f27616B = Integer.toString(7, 36);
        f27617C = Integer.toString(8, 36);
        f27618D = Integer.toString(9, 36);
        f27619E = Integer.toString(10, 36);
        f27620F = Integer.toString(11, 36);
        f27621G = Integer.toString(12, 36);
        f27622H = Integer.toString(13, 36);
        f27623I = Integer.toString(14, 36);
        f27624J = Integer.toString(15, 36);
        f27625K = Integer.toString(16, 36);
        f27626L = Integer.toString(19, 36);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f8, int i8, int i9, float f9, int i10, int i11, float f10, float f11, float f12, boolean z7, int i12, int i13, float f13, int i14) {
        if (charSequence == null) {
            bitmap.getClass();
        } else {
            H1.d(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f27635a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f27635a = charSequence.toString();
        } else {
            this.f27635a = null;
        }
        this.f27636b = alignment;
        this.f27637c = alignment2;
        this.f27638d = bitmap;
        this.f27639e = f8;
        this.f27640f = i8;
        this.f27641g = i9;
        this.f27642h = f9;
        this.f27643i = i10;
        this.f27644j = f11;
        this.f27645k = f12;
        this.f27646l = z7;
        this.f27647m = i12;
        this.f27648n = i11;
        this.f27649o = f10;
        this.f27650p = i13;
        this.f27651q = f13;
        this.f27652r = i14;
    }

    public final a a() {
        a aVar = new a();
        aVar.f27597a = this.f27635a;
        aVar.f27598b = this.f27638d;
        aVar.f27599c = this.f27636b;
        aVar.f27600d = this.f27637c;
        aVar.f27601e = this.f27639e;
        aVar.f27602f = this.f27640f;
        aVar.f27603g = this.f27641g;
        aVar.f27604h = this.f27642h;
        aVar.f27605i = this.f27643i;
        aVar.f27606j = this.f27648n;
        aVar.f27607k = this.f27649o;
        aVar.f27608l = this.f27644j;
        aVar.f27609m = this.f27645k;
        aVar.f27610n = this.f27646l;
        aVar.f27611o = this.f27647m;
        aVar.f27612p = this.f27650p;
        aVar.f27613q = this.f27651q;
        aVar.f27614r = this.f27652r;
        return aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (TextUtils.equals(this.f27635a, bVar.f27635a) && this.f27636b == bVar.f27636b && this.f27637c == bVar.f27637c) {
            Bitmap bitmap = bVar.f27638d;
            Bitmap bitmap2 = this.f27638d;
            if (bitmap2 != null ? !(bitmap == null || !bitmap2.sameAs(bitmap)) : bitmap == null) {
                if (this.f27639e == bVar.f27639e && this.f27640f == bVar.f27640f && this.f27641g == bVar.f27641g && this.f27642h == bVar.f27642h && this.f27643i == bVar.f27643i && this.f27644j == bVar.f27644j && this.f27645k == bVar.f27645k && this.f27646l == bVar.f27646l && this.f27647m == bVar.f27647m && this.f27648n == bVar.f27648n && this.f27649o == bVar.f27649o && this.f27650p == bVar.f27650p && this.f27651q == bVar.f27651q && this.f27652r == bVar.f27652r) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f27635a, this.f27636b, this.f27637c, this.f27638d, Float.valueOf(this.f27639e), Integer.valueOf(this.f27640f), Integer.valueOf(this.f27641g), Float.valueOf(this.f27642h), Integer.valueOf(this.f27643i), Float.valueOf(this.f27644j), Float.valueOf(this.f27645k), Boolean.valueOf(this.f27646l), Integer.valueOf(this.f27647m), Integer.valueOf(this.f27648n), Float.valueOf(this.f27649o), Integer.valueOf(this.f27650p), Float.valueOf(this.f27651q), Integer.valueOf(this.f27652r));
    }
}
