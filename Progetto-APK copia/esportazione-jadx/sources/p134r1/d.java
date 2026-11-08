package p134r1;

import K.b;
import android.text.Layout;
import android.text.SpannableStringBuilder;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f29728c = new b(18);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p110o0.b f29729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29730b;

    public d(SpannableStringBuilder spannableStringBuilder, Layout.Alignment alignment, float f8, int i8, float f9, int i9, boolean z7, int i10, int i11) {
        boolean z8;
        int i12;
        if (z7) {
            i12 = i10;
            z8 = true;
        } else {
            z8 = false;
            i12 = -16777216;
        }
        this.f29729a = new p110o0.b(spannableStringBuilder, alignment, null, null, f8, 0, i8, f9, i9, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, z8, i12, Integer.MIN_VALUE, 0.0f, 0);
        this.f29730b = i11;
    }
}
