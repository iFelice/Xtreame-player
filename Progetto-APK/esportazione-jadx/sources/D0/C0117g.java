package D0;

import com.google.android.gms.internal.ads.JL;
import p090l3.Y0;

/* JADX INFO: renamed from: D0.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0117g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1937c;

    public C0117g(Y0 y7) {
        this.f1935a = y7.f26509G;
        this.f1936b = y7.f26510H;
        this.f1937c = y7.f26511I;
    }

    public C0118h a() {
        if (this.f1935a || !(this.f1936b || this.f1937c)) {
            return new C0118h(this);
        }
        throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
    }

    public boolean b() {
        return (this.f1937c || this.f1936b) && this.f1935a;
    }

    public JL c() {
        if (this.f1935a || !(this.f1936b || this.f1937c)) {
            return new JL(this);
        }
        throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
    }

    public C0117g(boolean z7, boolean z8, boolean z9) {
        this.f1935a = z7;
        this.f1936b = z8;
        this.f1937c = z9;
    }
}
