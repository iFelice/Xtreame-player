package p134r1;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f29694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f29695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringBuilder f29696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f29697d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f29698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f29699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f29700g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f29701h;

    public b(int i8, int i9) {
        ArrayList arrayList = new ArrayList();
        this.f29694a = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f29695b = arrayList2;
        StringBuilder sb = new StringBuilder();
        this.f29696c = sb;
        this.f29700g = i8;
        arrayList.clear();
        arrayList2.clear();
        sb.setLength(0);
        this.f29697d = 15;
        this.f29698e = 0;
        this.f29699f = 0;
        this.f29701h = i9;
    }

    public final void a(char c8) {
        StringBuilder sb = this.f29696c;
        if (sb.length() < 32) {
            sb.append(c8);
        }
    }

    public final void b() {
        StringBuilder sb = this.f29696c;
        int length = sb.length();
        if (length > 0) {
            sb.delete(length - 1, length);
            ArrayList arrayList = this.f29694a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                a aVar = (a) arrayList.get(size);
                int i8 = aVar.f29693c;
                if (i8 != length) {
                    return;
                }
                aVar.f29693c = i8 - 1;
            }
        }
    }

    public final p110o0.b c(int i8) {
        int i9;
        float f8;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f29695b;
            if (i10 >= arrayList.size()) {
                break;
            }
            spannableStringBuilder.append((CharSequence) arrayList.get(i10));
            spannableStringBuilder.append('\n');
            i10++;
        }
        spannableStringBuilder.append((CharSequence) d());
        if (spannableStringBuilder.length() == 0) {
            return null;
        }
        int i11 = this.f29698e + this.f29699f;
        int length = (32 - i11) - spannableStringBuilder.length();
        int i12 = i11 - length;
        if (i8 != Integer.MIN_VALUE) {
            i9 = i8;
        } else if (this.f29700g != 2 || (Math.abs(i12) >= 3 && length >= 0)) {
            i9 = (this.f29700g != 2 || i12 <= 0) ? 0 : 2;
        } else {
            i9 = 1;
        }
        if (i9 != 1) {
            if (i9 == 2) {
                i11 = 32 - length;
            }
            f8 = ((i11 / 32.0f) * 0.8f) + 0.1f;
        } else {
            f8 = 0.5f;
        }
        int i13 = this.f29697d;
        if (i13 > 7) {
            i13 -= 17;
        } else if (this.f29700g == 1) {
            i13 -= this.f29701h - 1;
        }
        return new p110o0.b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, null, null, i13, 1, Integer.MIN_VALUE, f8, i9, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
    }

    public final SpannableString d() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f29696c);
        int length = spannableStringBuilder.length();
        int i8 = 0;
        int i9 = -1;
        int i10 = -1;
        int i11 = 0;
        int i12 = -1;
        int i13 = -1;
        boolean z7 = false;
        while (true) {
            ArrayList arrayList = this.f29694a;
            if (i8 >= arrayList.size()) {
                break;
            }
            a aVar = (a) arrayList.get(i8);
            boolean z8 = aVar.f29692b;
            int i14 = aVar.f29691a;
            if (i14 != 8) {
                boolean z9 = i14 == 7;
                if (i14 != 7) {
                    i13 = c.f29703B[i14];
                }
                z7 = z9;
            }
            int i15 = aVar.f29693c;
            i8++;
            if (i15 != (i8 < arrayList.size() ? ((a) arrayList.get(i8)).f29693c : length)) {
                if (i9 != -1 && !z8) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i9, i15, 33);
                    i9 = -1;
                } else if (i9 == -1 && z8) {
                    i9 = i15;
                }
                if (i10 != -1 && !z7) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i10, i15, 33);
                    i10 = -1;
                } else if (i10 == -1 && z7) {
                    i10 = i15;
                }
                if (i13 != i12) {
                    if (i12 != -1) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(i12), i11, i15, 33);
                    }
                    i12 = i13;
                    i11 = i15;
                }
            }
        }
        if (i9 != -1 && i9 != length) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i9, length, 33);
        }
        if (i10 != -1 && i10 != length) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
        }
        if (i11 != length && i12 != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i12), i11, length, 33);
        }
        return new SpannableString(spannableStringBuilder);
    }

    public final boolean e() {
        return this.f29694a.isEmpty() && this.f29695b.isEmpty() && this.f29696c.length() == 0;
    }
}
