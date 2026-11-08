package p134r1;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final boolean[] f29731A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final int[] f29732B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final int[] f29733C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final int[] f29734D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final int[] f29735E;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f29736v = c(2, 2, 2, 0);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f29737w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f29738x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f29739y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f29740z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f29741a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SpannableStringBuilder f29742b = new SpannableStringBuilder();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f29743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f29744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f29745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f29746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f29747g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f29748h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f29749i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f29750j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f29751k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f29752l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f29753m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f29754n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f29755o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f29756p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f29757q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f29758r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f29759s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f29760t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f29761u;

    static {
        int iC = c(0, 0, 0, 0);
        f29737w = iC;
        int iC2 = c(0, 0, 0, 3);
        f29738x = new int[]{0, 0, 0, 0, 0, 2, 0};
        f29739y = new int[]{0, 0, 0, 0, 0, 0, 2};
        f29740z = new int[]{3, 3, 3, 3, 3, 3, 1};
        f29731A = new boolean[]{false, false, false, true, true, true, false};
        f29732B = new int[]{iC, iC2, iC, iC, iC2, iC, iC};
        f29733C = new int[]{0, 1, 2, 3, 4, 3, 4};
        f29734D = new int[]{0, 0, 0, 0, 0, 3, 3};
        f29735E = new int[]{iC, iC, iC, iC, iC, iC2, iC2};
    }

    public e() {
        d();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    public static int c(int i8, int i9, int i10, int i11) {
        int i12;
        H1.e(i8, 4);
        H1.e(i9, 4);
        H1.e(i10, 4);
        H1.e(i11, 4);
        if (i11 == 0 || i11 == 1) {
            i12 = 255;
        } else if (i11 == 2) {
            i12 = 127;
        } else if (i11 != 3) {
            i12 = 255;
        } else {
            i12 = 0;
        }
        return Color.argb(i12, i8 > 1 ? 255 : 0, i9 > 1 ? 255 : 0, i10 > 1 ? 255 : 0);
    }

    public final void a(char c8) {
        SpannableStringBuilder spannableStringBuilder = this.f29742b;
        if (c8 != '\n') {
            spannableStringBuilder.append(c8);
            return;
        }
        ArrayList arrayList = this.f29741a;
        arrayList.add(b());
        spannableStringBuilder.clear();
        if (this.f29755o != -1) {
            this.f29755o = 0;
        }
        if (this.f29756p != -1) {
            this.f29756p = 0;
        }
        if (this.f29757q != -1) {
            this.f29757q = 0;
        }
        if (this.f29759s != -1) {
            this.f29759s = 0;
        }
        while (true) {
            if (arrayList.size() < this.f29750j && arrayList.size() < 15) {
                this.f29761u = arrayList.size();
                return;
            }
            arrayList.remove(0);
        }
    }

    public final SpannableString b() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f29742b);
        int length = spannableStringBuilder.length();
        if (length > 0) {
            if (this.f29755o != -1) {
                spannableStringBuilder.setSpan(new StyleSpan(2), this.f29755o, length, 33);
            }
            if (this.f29756p != -1) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), this.f29756p, length, 33);
            }
            if (this.f29757q != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f29758r), this.f29757q, length, 33);
            }
            if (this.f29759s != -1) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f29760t), this.f29759s, length, 33);
            }
        }
        return new SpannableString(spannableStringBuilder);
    }

    public final void d() {
        this.f29741a.clear();
        this.f29742b.clear();
        this.f29755o = -1;
        this.f29756p = -1;
        this.f29757q = -1;
        this.f29759s = -1;
        this.f29761u = 0;
        this.f29743c = false;
        this.f29744d = false;
        this.f29745e = 4;
        this.f29746f = false;
        this.f29747g = 0;
        this.f29748h = 0;
        this.f29749i = 0;
        this.f29750j = 15;
        this.f29751k = 0;
        this.f29752l = 0;
        this.f29753m = 0;
        int i8 = f29737w;
        this.f29754n = i8;
        this.f29758r = f29736v;
        this.f29760t = i8;
    }

    public final void e(boolean z7, boolean z8) {
        int i8 = this.f29755o;
        SpannableStringBuilder spannableStringBuilder = this.f29742b;
        if (i8 != -1) {
            if (!z7) {
                spannableStringBuilder.setSpan(new StyleSpan(2), this.f29755o, spannableStringBuilder.length(), 33);
                this.f29755o = -1;
            }
        } else if (z7) {
            this.f29755o = spannableStringBuilder.length();
        }
        if (this.f29756p == -1) {
            if (z8) {
                this.f29756p = spannableStringBuilder.length();
            }
        } else {
            if (z8) {
                return;
            }
            spannableStringBuilder.setSpan(new UnderlineSpan(), this.f29756p, spannableStringBuilder.length(), 33);
            this.f29756p = -1;
        }
    }

    public final void f(int i8, int i9) {
        int i10 = this.f29757q;
        SpannableStringBuilder spannableStringBuilder = this.f29742b;
        if (i10 != -1 && this.f29758r != i8) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f29758r), this.f29757q, spannableStringBuilder.length(), 33);
        }
        if (i8 != f29736v) {
            this.f29757q = spannableStringBuilder.length();
            this.f29758r = i8;
        }
        if (this.f29759s != -1 && this.f29760t != i9) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f29760t), this.f29759s, spannableStringBuilder.length(), 33);
        }
        if (i9 != f29737w) {
            this.f29759s = spannableStringBuilder.length();
            this.f29760t = i9;
        }
    }
}
