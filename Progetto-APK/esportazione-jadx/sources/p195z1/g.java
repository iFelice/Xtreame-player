package p195z1;

import android.text.Layout;
import com.google.android.gms.internal.ads.C0704Dj;
import com.google.protobuf.U2;
import p000a.r;
import p110o0.a;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CharSequence f31736c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f31734a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f31735b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f31737d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f31738e = -3.4028235E38f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31739f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f31740g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f31741h = -3.4028235E38f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f31742i = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f31743j = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f31744k = Integer.MIN_VALUE;

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036  */
    /* JADX WARN: Code duplicated, block: B:29:0x0052  */
    /* JADX WARN: Code duplicated, block: B:31:0x0058  */
    /* JADX WARN: Code duplicated, block: B:39:0x006e  */
    public final a a() {
        Layout.Alignment alignment;
        float f8 = this.f31741h;
        float f9 = -3.4028235E38f;
        if (f8 == -3.4028235E38f) {
            int i8 = this.f31737d;
            if (i8 != 4) {
                f8 = i8 != 5 ? 0.5f : 1.0f;
            } else {
                f8 = 0.0f;
            }
        }
        int i9 = this.f31742i;
        if (i9 == Integer.MIN_VALUE) {
            int i10 = this.f31737d;
            if (i10 == 1) {
                i9 = 0;
            } else if (i10 == 3) {
                i9 = 2;
            } else if (i10 == 4) {
                i9 = 0;
            } else if (i10 != 5) {
                i9 = 1;
            } else {
                i9 = 2;
            }
        }
        a aVar = new a();
        int i11 = this.f31737d;
        if (i11 == 1) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else if (i11 == 2) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        } else if (i11 == 3) {
            alignment = Layout.Alignment.ALIGN_OPPOSITE;
        } else if (i11 == 4) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else if (i11 != 5) {
            U2.v("Unknown textAlignment: ", i11, "WebvttCueParser");
            alignment = null;
        } else {
            alignment = Layout.Alignment.ALIGN_OPPOSITE;
        }
        aVar.f27599c = alignment;
        float f10 = this.f31738e;
        int i12 = this.f31739f;
        if (f10 != -3.4028235E38f && i12 == 0 && (f10 < 0.0f || f10 > 1.0f)) {
            f9 = 1.0f;
        } else if (f10 != -3.4028235E38f) {
            f9 = f10;
        } else if (i12 == 0) {
            f9 = 1.0f;
        }
        aVar.f27601e = f9;
        aVar.f27602f = i12;
        aVar.f27603g = this.f31740g;
        aVar.f27604h = f8;
        aVar.f27605i = i9;
        float f11 = this.f31743j;
        if (i9 == 0) {
            f8 = 1.0f - f8;
        } else if (i9 == 1) {
            f8 = f8 <= 0.5f ? f8 * 2.0f : (1.0f - f8) * 2.0f;
        } else if (i9 != 2) {
            throw new IllegalStateException(String.valueOf(i9));
        }
        aVar.f27608l = Math.min(f11, f8);
        aVar.f27612p = this.f31744k;
        CharSequence charSequence = this.f31736c;
        if (charSequence != null) {
            aVar.f27597a = charSequence;
            aVar.f27598b = null;
        }
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036  */
    /* JADX WARN: Code duplicated, block: B:29:0x0051  */
    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:39:0x006d  */
    public final C0704Dj b() {
        Layout.Alignment alignment;
        float f8 = this.f31741h;
        float f9 = -3.4028235E38f;
        if (f8 == -3.4028235E38f) {
            int i8 = this.f31737d;
            if (i8 != 4) {
                f8 = i8 != 5 ? 0.5f : 1.0f;
            } else {
                f8 = 0.0f;
            }
        }
        int i9 = this.f31742i;
        if (i9 == Integer.MIN_VALUE) {
            int i10 = this.f31737d;
            if (i10 == 1) {
                i9 = 0;
            } else if (i10 == 3) {
                i9 = 2;
            } else if (i10 == 4) {
                i9 = 0;
            } else if (i10 != 5) {
                i9 = 1;
            } else {
                i9 = 2;
            }
        }
        C0704Dj c0704Dj = new C0704Dj();
        int i11 = this.f31737d;
        if (i11 == 1) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else if (i11 == 2) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        } else if (i11 == 3) {
            alignment = Layout.Alignment.ALIGN_OPPOSITE;
        } else if (i11 == 4) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else if (i11 != 5) {
            r.p("Unknown textAlignment: ", i11, "WebvttCueParser");
            alignment = null;
        } else {
            alignment = Layout.Alignment.ALIGN_OPPOSITE;
        }
        c0704Dj.f12854c = alignment;
        float f10 = this.f31738e;
        int i12 = this.f31739f;
        if (f10 != -3.4028235E38f && i12 == 0 && (f10 < 0.0f || f10 > 1.0f)) {
            f9 = 1.0f;
        } else if (f10 != -3.4028235E38f) {
            f9 = f10;
        } else if (i12 == 0) {
            f9 = 1.0f;
        }
        c0704Dj.f12856e = f9;
        c0704Dj.f12857f = i12;
        c0704Dj.f12858g = this.f31740g;
        c0704Dj.f12859h = f8;
        c0704Dj.f12860i = i9;
        float f11 = this.f31743j;
        if (i9 == 0) {
            f8 = 1.0f - f8;
        } else if (i9 != 1) {
            if (i9 != 2) {
                throw new IllegalStateException(String.valueOf(i9));
            }
        } else if (f8 <= 0.5f) {
            f8 += f8;
        } else {
            float f12 = 1.0f - f8;
            f8 = f12 + f12;
        }
        c0704Dj.f12863l = Math.min(f11, f8);
        c0704Dj.f12865n = this.f31744k;
        CharSequence charSequence = this.f31736c;
        if (charSequence != null) {
            c0704Dj.f12852a = charSequence;
        }
        return c0704Dj;
    }
}
